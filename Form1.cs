using MySqlConnector;

namespace pk41_demoExam
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using var connection = new MySqlConnection("Server=localhost;User ID=pk41;Password=123456;Database=partners");
            connection.Open();

            using var command = new MySqlCommand("SELECT Name, Country, Website, Founded FROM partners LIMIT 10;", connection);
            using var reader = command.ExecuteReader();
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

                this.Controls.Add(nameLabel);
                this.Controls.Add(countryLabel);
                this.Controls.Add(webLabel);
                this.Controls.Add(foundedLabel);

                i++;
            }





        }
    }
}
