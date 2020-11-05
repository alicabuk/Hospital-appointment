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
    public partial class HastaBilgiDuzenle : Form
    {
        public HastaBilgiDuzenle()
        {
            InitializeComponent();
        }

        sqlbaglantisi bgl = new sqlbaglantisi();
        public string TCno;

        private void HastaBilgiDuzenle_Load(object sender, EventArgs e)
        {
            MskTC.Text = TCno;
            SqlCommand getir = new SqlCommand("select * from Tbl_Hastalar where HastaTC=@p1", bgl.baglanti());
            getir.Parameters.AddWithValue("@p1", MskTC.Text);
            SqlDataReader dr = getir.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[1].ToString();
                TxtSoyad.Text = dr[2].ToString();
                MskTelefon.Text = dr[4].ToString();
                TxtSifre.Text = dr[5].ToString();
                CmbCinsiyet.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();
        }

        private void BtnBilgiDuzenle_Click(object sender, EventArgs e)
        {
            SqlCommand guncelle = new SqlCommand("update Tbl_Hastalar set HastaAd=@p1,HastaSoyad=@p2,HastaTelefon=@p3,HastaSifre=@p4,HastaCinsiyet=@p5 where HastaTC=@p6 ",bgl.baglanti());
            guncelle.Parameters.AddWithValue("@p1", TxtAd.Text);
            guncelle.Parameters.AddWithValue("@p2", TxtSoyad.Text);
            guncelle.Parameters.AddWithValue("@p3", MskTelefon.Text);
            guncelle.Parameters.AddWithValue("@p4", TxtSifre.Text);
            guncelle.Parameters.AddWithValue("@p5", CmbCinsiyet.Text);
            guncelle.Parameters.AddWithValue("@p6", MskTC.Text);
            guncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
            MessageBox.Show("Bilgileriniz Güncellenmiştir.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}
