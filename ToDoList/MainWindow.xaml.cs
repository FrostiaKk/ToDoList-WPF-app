using System.Data;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.IO;
using System.Threading.Tasks;
using System;
using MySql.Data.MySqlClient;

namespace ToDoList
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MySqlConnection conn = new MySqlConnection("Server=localhost; User Id=root; Password='';Database=todolist");
        MySqlDataAdapter adapter = new MySqlDataAdapter();
        string currentid = "";
        public DataSet ds = new DataSet();
        public MainWindow()
        {
            InitializeComponent();
        }
        public void GetRecords()
        {
            ds = new DataSet();
            adapter = new MySqlDataAdapter("select * from tdlist", conn);
            DataTable dt = new DataTable("List");
            try
            {
                adapter.Fill(dt);
            }catch (Exception ex)
            {
                MessageBox.Show("Błąd konfiguracji bazy danych");
                System.Windows.Application.Current.Shutdown();

            }

            showBox.ItemsSource = dt.DefaultView;

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            GetRecords();
        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            ds = new DataSet();
            adapter = new MySqlDataAdapter("insert into tdlist (List) VALUES ('" + elementListy.Text + "')",conn);
            adapter.Fill(ds, "tdlist");
            elementListy.Clear();
            GetRecords();
        }

        private void editButton_Click(object sender, RoutedEventArgs e)
        {
            currentid = GetSelectedCellValue();
            string sql = "Select List from tdlist where id=" + currentid;
            conn.Open();
            var cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                elementListy.Text = rdr.GetString(0);
            }
            conn.Close();


        }
        public string GetSelectedCellValue()
        {
            DataGridCellInfo cellInfo = showBox.SelectedCells[0];
            if (cellInfo == null) return null;

            DataGridBoundColumn column = cellInfo.Column as DataGridBoundColumn;
            if (column == null) return null;

            FrameworkElement element = new FrameworkElement() { DataContext = cellInfo.Item };
            BindingOperations.SetBinding(element, TagProperty, column.Binding);
            
            return element.Tag.ToString();
        }

        private void updateButton_Click(object sender, RoutedEventArgs e)
        {
            ds = new DataSet();
            adapter = new MySqlDataAdapter("update tdlist set list= '" + elementListy.Text + "' where id =" + currentid, conn);
            adapter.Fill(ds, "tdlist");
            elementListy.Clear();
            GetRecords();
        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            currentid = GetSelectedCellValue();
            ds = new DataSet();
            adapter = new MySqlDataAdapter("delete from tdlist where id =" + currentid, conn);
            adapter.Fill(ds, "tdlist");
            elementListy.Clear();
            GetRecords();
        }
    }
}
