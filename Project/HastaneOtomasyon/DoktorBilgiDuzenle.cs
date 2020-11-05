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
    public partial class DoktorBilgiDuzenle : Form
    {
        public DoktorBilgiDuzenle()
        {
            InitializeComponent();
        }

        sqlbaglantisi bgl = new sqlbaglantisi();
        public string TCnum;

        private void DoktorBilgiDuzenle_Load(object sender, EventArgs e)
        {
            MskTC.Text = TCnum;
            SqlCommand getir = new SqlCommand("select * from Tbl_Doktorlar where DoktorTC=@p1", bgl.baglanti());
            getir.Parameters.AddWithValue("@p1", MskTC.Text);
            SqlDataReader dr = getir.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[1].ToString();
                TxtSoyad.Text = dr[2].ToString();
                CmbBrans.Text=dr[3].ToString();
                TxtSifre.Text = dr[5].ToString();
                MskTelefon.Text = dr[7].ToString();
            }
            bgl.baglanti().Close();
            SqlCommand brans = new SqlCommand("select BransAd from Tbl_Branslar", bgl.baglanti());
            SqlDataReader dr1 = brans.ExecuteReader();
            while (dr1.Read())
            {
                CmbBrans.Items.Add(dr1[0]);
            }
            bgl.baglanti().Close();
            
        }

        private void BtnKayitOl_Click(object sender, EventArgs e)
        {
            SqlCommand guncelle = new SqlCommand("update Tbl_Doktorlar set DoktorAd=@p1,DoktorSoyad=@p2,DoktorTelefon=@p3,DoktorSifre=@p4,DoktorBrans=@p5 where DoktorTC=@p6 ", bgl.baglanti());
            guncelle.Parameters.AddWithValue("@p1", TxtAd.Text);
            guncelle.Parameters.AddWithValue("@p2", TxtSoyad.Text);
            guncelle.Parameters.AddWithValue("@p3", MskTelefon.Text);
            guncelle.Parameters.AddWithValue("@p4", TxtSifre.Text);
            guncelle.Parameters.AddWithValue("@p5", CmbBrans.Text);
            guncelle.Parameters.AddWithValue("@p6", MskTC.Text);
            guncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
            MessageBox.Show("Bilgileriniz Güncellenmiştir.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}
