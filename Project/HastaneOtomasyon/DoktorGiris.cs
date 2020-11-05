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
    public partial class DoktorGiris : Form
    {
        public DoktorGiris()
        {
            InitializeComponent();
        }

        sqlbaglantisi bgl = new sqlbaglantisi();

        private void LnkUyeOl_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            DoktorKayit dk = new DoktorKayit();
            dk.Show();
        }

        private void BtnGiris_Click(object sender, EventArgs e)
        {
            SqlCommand goster = new SqlCommand("select * from Tbl_Doktorlar where DoktorTC=@p1 and DoktorSifre=@p2", bgl.baglanti());
            goster.Parameters.AddWithValue("@p1", MskTC.Text);
            goster.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = goster.ExecuteReader();
            if (dr.Read())
            {
                DoktorBilgi db = new DoktorBilgi();
                db.tc = MskTC.Text;
                db.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Hatali Giriş Yaptınız.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
            bgl.baglanti().Close();
            
        }
    }
}
