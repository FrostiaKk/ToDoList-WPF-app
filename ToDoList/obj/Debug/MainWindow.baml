   M S B A M L   `   `   `  ����C  ?ToDoList, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ToDoListToDoList  5   	       ToDoList.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:ToDoList     5   	   -   5        $��18(�5        � Title$  
MainWindow��5   	   $	��400��6   $	��605��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��20 �6    � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��20 �6   .+�5   
   �� -   5         ��Name$ elementListy��5      $��1��6(   $��1��68   $��2��5      $
��Left=�6&   $	��300��5      �� 5    
   -   5         ��Name$ 	addButton��5       $��3��6$   $��1��64   $	��100��5!      $��Dodaj��6   $��10,0,0,0q�6-   $��Right=�5"   )   �� 5$   
   -   5        $ updateButton��5$      $��4��6'   $��1��67   $	��100��5%      $��
Aktualizuj��6   $��10,0,0,0q�62   $��Right=�5&   ,   &   System.Windows.Controls.DataGrid  5(   
   -   5          Name$ showBox��5(      $��1��6$   $��2��64   $��4��5)      $	��200��6'   $��Stretch=�5*      $��	0,10,0,10q�61   �� 5,   
   -   5        $ 
editButton��5,      $��1��6%   $��3��65   $	��100��5-      $��Edytuj��6   $
��Left=�6.   5.      �� 50   
   -   5        $ deleteButton��50      $��4��6'   $��3��67   $	��100��51      $��Usuń��6   $��Right=�6,   52      54      55      