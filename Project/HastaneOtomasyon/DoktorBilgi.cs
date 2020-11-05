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
    public partial class DoktorBilgi : Form
    {
        public DoktorBilgi()
        {
            InitializeComponent();
        }

        sqlbaglantisi bgl = new sqlbaglantisi();
        public string tc;

        private void LnkBilgiDuzenle_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            DoktorBilgiDuzenle dbd = new DoktorBilgiDuzenle();
            dbd.TCnum = LblTC.Text;
            dbd.Show();
        }

        private void DoktorBilgi_Load(object sender, EventArgs e)
        {
            LblTC.Text = tc;
            SqlCommand getir = new SqlCommand("select DoktorAd,DoktorSoyad,DoktorBrans from Tbl_Doktorlar where DoktorTC=@p1", bgl.baglanti());
            getir.Parameters.AddWithValue("@p1", LblTC.Text);
            SqlDataReader dr = getir.ExecuteReader();
            while (dr.Read())
            {
                LblAdSoyad.Text = dr[0] + " " + dr[1];
                LblBrans.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();

            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from Tbl_Randevular where RandevuDoktor='"+LblAdSoyad.Text+"'",bgl.baglanti());
            da1.Fill(dt1);
            dataGridView1.DataSource = dt1;

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int secilen = dataGridView1.SelectedCells[0].RowIndex;
            richTextBox1.Text = dataGridView1.Rows[secilen].Cells[7].Value.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            RandevuOlustur ro = new RandevuOlustur();
            ro.adsoyad = LblAdSoyad.Text;
            ro.brans = LblBrans.Text;
            ro.Show();
        }
    }
}
