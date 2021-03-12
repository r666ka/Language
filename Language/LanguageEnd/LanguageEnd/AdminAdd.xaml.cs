using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace LanguageEnd
{
    /// <summary>
    /// Логика взаимодействия для AdminAdd.xaml
    /// </summary>
    public partial class AdminAdd : Window
    {
        public AdminAdd()
        {
            InitializeComponent();
        }

        // Обьявление переменных. Подключение к БД. Условия на проверки. Вывод.
        private void AddId_Click(object sender, RoutedEventArgs e)
        {
            string NewName = Imy.Text;
            string NewFemale = Familiy.Text;
            string NewOtchestvo = Otchestvo.Text;
            string NewMail = Mail.Text;
            string NewNomer = Nomer.Text;
            string NewPol = Pol.Text;
            string NewData = Data.Text;
            string NewDataRegister = DataRegister.Text;

            if (Imy.Text == "" || Familiy.Text == "" || Otchestvo.Text == "" || Mail.Text == "" || Nomer.Text == "" || Pol.Text == "" || Data.Text == "" || DataRegister.Text == "")
            {
                MessageBox.Show("Все поля должны быть заполнены!");
            }
            else
            {
                LanguageEntities languageEntities = new LanguageEntities();


                var user = languageEntities.client_import_
                    .Where(u => u.Фамилия == Familiy.Text)
                    .FirstOrDefault();

                if ((user == null) && (Imy.Text != "" && Familiy.Text != "" && Otchestvo.Text != "" && Mail.Text != "" && Nomer.Text != "" && Pol.Text != "" && Pol.Text != "" && DataRegister.Text != ""))
                {
                    user = new client_import_();
                    user.Имя = NewName;
                    user.Фамилия = NewFemale;
                    user.Отчество = NewOtchestvo;
                    user.Email = NewMail;
                    user.Телефон = NewNomer;
                    user.Пол = NewPol;
                    user.Дата_рождения = NewData;
                    languageEntities.client_import_.Add(user);
                    languageEntities.SaveChanges();
                    MessageBox.Show("Клиент успешно добавлен");
                    AdminAdd adminPanel = new AdminAdd();
                    adminPanel.Show();
                    Close();
                }
            }
        }

        //Регион по двойному клику чистить текст блоки

        #region MyClear_TextBlock
        private void TextBox_MouseDoubleClick_1(object sender, MouseButtonEventArgs e)
        {
            Familiy.Clear();
        }

        private void TextBox_MouseDoubleClick_imy(object sender, MouseButtonEventArgs e)
        {
            Imy.Clear();
        }

        private void TextBox_MouseDoubleClick_nomer(object sender, MouseButtonEventArgs e)
        {
            Nomer.Clear();
        }

        private void TextBox_MouseDoubleClick_Data(object sender, MouseButtonEventArgs e)
        {
            Data.Clear();
        }
        private void TextBox_MouseDoubleClick_dataregister(object sender, MouseButtonEventArgs e)
        {
            DataRegister.Clear();
        }
        private void TextBox_MouseDoubleClick_otchestvo(object sender, MouseButtonEventArgs e)
        {
            Otchestvo.Clear();
        }
        private void TextBox_MouseDoubleClick_pol(object sender, MouseButtonEventArgs e)
        {
            Pol.Clear();
        }
        private void TextBox_MouseDoubleClick_mail(object sender, MouseButtonEventArgs e)
        {
            Mail.Clear();
        }
        #endregion

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }

    }
}
