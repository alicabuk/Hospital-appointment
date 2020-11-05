using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace HastaneOtomasyon
{
    public partial class HastaKayit : Form
    {
        public HastaKayit()
        {
            InitializeComponent();
        }

        sqlbaglantisi bgl = new sqlbaglantisi();

        private void BtnKayitOl_Click(object sender, EventArgs e)
        {
            
            if (TxtAd.Text != "" && TxtSoyad.Text!="" && MskTC.Text != "" && MskTelefon.Text != "" && TxtSifre.Text != "" && CmbCinsiyet.Text != "")
            {
                SqlCommand ekle = new SqlCommand("insert into Tbl_Hastalar (HastaAd,HastaSoyad,HastaTC,HastaTelefon,HastaSifre,HastaCinsiyet) values (@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti());
                ekle.Parameters.AddWithValue("@p1", TxtAd.Text);
                ekle.Parameters.AddWithValue("@p2", TxtSoyad.Text);
                ekle.Parameters.AddWithValue("@p3", MskTC.Text);
                ekle.Parameters.AddWithValue("@p4", MskTelefon.Text);
                ekle.Parameters.AddWithValue("@p5", TxtSifre.Text);
                ekle.Parameters.AddWithValue("@p6", CmbCinsiyet.Text);
                ekle.ExecuteNonQuery();
                bgl.baglanti().Close();
                MessageBox.Show("Başarıyla Kayıt Oldunuz. Şifreniz: " + TxtSifre.Text, "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Lütfen Tüm Alanları Eksiksiz Giriniz.","Uyarı",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }


        }

        private void HastaKayit_Load(object sender, EventArgs e)
        {

        }
    }
}
