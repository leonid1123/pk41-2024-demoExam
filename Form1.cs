using MySqlConnector;
using System.Diagnostics;

namespace pk41_demoExam
{
    public partial class Form1 : Form
    {
        List<int> idPartnersList = new List<int>();
        List<int> discounts = new List<int>();
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using var connection = new MySqlConnection("Server=localhost;User ID=pk41;Password=123456;Database=partners");
            connection.Open();
            var command = new MySqlCommand();
            command.Connection = connection;

            //получить все id партнеров из таблицы sales

            command.CommandText = "SELECT DISTINCT id_partner FROM sales";
            command.ExecuteNonQuery();
            var reader = command.ExecuteReader();
            while (reader.Read())
            {
                idPartnersList.Add(reader.GetInt32(0));
            }

            //посчитать все продажи И скидку

            foreach (var item in idPartnersList)
            {
                reader.Close();
                command.CommandText = "SELECT SUM(quantity) FROM sales WHERE id_partner = @p";
                command.Parameters.Clear();
                command.Parameters.AddWithValue("p", item);
                command.ExecuteNonQuery();

                reader = command.ExecuteReader();
                while (reader.Read())//расчет скидки
                {
                    var tmp = reader.GetInt32(0);
                    if (tmp < 10000)
                    {
                        discounts.Add(0);
                    } else if(tmp > 10000 & tmp < 50000)
                    {
                        discounts.Add(5);
                    } else if (tmp > 50000 & tmp < 300000)
                    {
                        discounts.Add(10);
                    } else
                    {
                        discounts.Add(15);
                    }
                }
            }

            //получить список всех партнеров

            reader.Close();
            command.CommandText = "SELECT Name, Country, Website, Founded FROM partners LIMIT 10;";
            command.ExecuteNonQuery();
            reader = command.ExecuteReader();
            int i = 0;
            while (reader.Read())
            {
                string ansName = reader.GetString(0);
                string ansCountry = reader.GetString(1);
                string ansWeb = reader.GetString(2);
                int ansFounded = reader.GetInt32(3);

                Label nameLabel = new Label();
                nameLabel.Location = new System.Drawing.Point(0, 0 + i * 80);
                nameLabel.Parent = this;
                nameLabel.Name = "Name" + i.ToString();
                nameLabel.Text = ansName;
                nameLabel.Size = new System.Drawing.Size(200, 20);

                Label countryLabel = new Label();
                countryLabel.Location = new System.Drawing.Point(0, 20 + i * 80);
                countryLabel.Parent = this;
                countryLabel.Name = "Country" + i.ToString();
                countryLabel.Text = ansCountry;

                Label webLabel = new Label();
                webLabel.Location = new System.Drawing.Point(0, 40 + i * 80);
                webLabel.Parent = this;
                webLabel.Name = "Web" + i.ToString();
                webLabel.Text = ansWeb;
                webLabel.Size = new System.Drawing.Size(200, 20);

                Label foundedLabel = new Label();
                foundedLabel.Location = new System.Drawing.Point(0, 60 + i * 80);
                foundedLabel.Parent = this;
                foundedLabel.Name = "Founded" + i.ToString();
                foundedLabel.Text = ansFounded.ToString();

                Label discountLabel = new Label();
                discountLabel.Location = new System.Drawing.Point(200, 0 + i * 80);
                discountLabel.Parent = this;
                discountLabel.Name = "discount" + i.ToString();
                discountLabel.Text = "Скидка:"; //вывести скидку сюда

                this.Controls.Add(nameLabel);
                this.Controls.Add(countryLabel);
                this.Controls.Add(webLabel);
                this.Controls.Add(foundedLabel);

                i++;
            }           
        }
    }
}
