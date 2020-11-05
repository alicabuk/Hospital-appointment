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
    public partial class RandevuOlustur : Form
    {
        public RandevuOlustur()
        {
            InitializeComponent();
        }

        sqlbaglantisi bgl = new sqlbaglantisi();
        public string adsoyad;
        public string brans;

        private void BtnOlustur_Click(object sender, EventArgs e)
        {
            if (TxtAdSoyad.Text != "" && MskTarih.Text != "" && CmbSaat.Text != "" && TxtBrans.Text != "")
            {
                SqlCommand ekle = new SqlCommand("instert into Tbl_Randevular (RandevuTarih,RandevuSaat,RandevuDoktor,RandevuBrans) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
                ekle.Parameters.AddWithValue("@p1", MskTarih.Text);
                ekle.Parameters.AddWithValue("@p2", CmbSaat.Text);
                ekle.Parameters.AddWithValue("@p3", TxtAdSoyad.Text);
                ekle.Parameters.AddWithValue("@p4", TxtBrans.Text);
                ekle.ExecuteNonQuery();
                bgl.baglanti().Close();
                MessageBox.Show("Randevu Saatiniz Başarı İle Oluşturuldu.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }else
            {
                MessageBox.Show("Lütfen Tüm Alanları Eksiksiz Giriniz", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void RandevuOlustur_Load(object sender, EventArgs e)
        {
            TxtAdSoyad.Text = adsoyad;
            TxtBrans.Text = brans;
        }
    }
}
