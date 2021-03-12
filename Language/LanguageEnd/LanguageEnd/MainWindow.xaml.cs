using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LanguageEnd
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void clienti(object sender, RoutedEventArgs e)
        {
            LanguageEntities languageEntities = new LanguageEntities();
            languageEntities.client_import_.Load();
            var instr = from client_import_ in languageEntities.client_import_
                        select new
                        {
                            client_import_.Имя,
                            client_import_.Фамилия,
                            client_import_.Отчество,
                            client_import_.Пол,
                            client_import_.Телефон,
                            client_import_.Дата_регистрации,
                            client_import_.Дата_рождения,
                            client_import_.Email,
                            client_import_.Фотография_клиента

                        };
            AdminTable.ItemsSource = instr.ToList();
            kolvo.Text = instr.Count().ToString();
        }

        private void name_dobavit_Click(object sender, RoutedEventArgs e)
        {
            AdminAdd admin = new AdminAdd();
            admin
                .Show();
            Close();
        }

        //Делаем проверку на заполнение поля. Поиск.
        private void nameFilter_TextChanged(object sender, TextChangedEventArgs e)
        {
            LanguageEntities languageEntities = new LanguageEntities();
            var i = from u in languageEntities.client_import_
                    where ((u.Имя.Contains(nameFilter.Text)) || (u.Фамилия.Contains(nameFilter.Text)) || (u.Отчество.Contains(nameFilter.Text)) || (u.Email.Contains(nameFilter.Text))
                    || (u.Дата_регистрации.Contains(nameFilter.Text)) || (u.Дата_рождения.Contains(nameFilter.Text)) || (u.Пол.Contains(nameFilter.Text)))
                    select new { u.Имя, u.Фамилия, u.Отчество, u.Email, u.Пол, u.Дата_рождения, u.Дата_регистрации, };
            AdminTable.ItemsSource = i.ToList();
            kolvo.Text = i.Count().ToString();
        }

        private void genderFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            LanguageEntities languageEntities = new LanguageEntities();


        }

    }
}
