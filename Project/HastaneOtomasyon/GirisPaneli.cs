using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HastaneOtomasyon
{
    public partial class GirisPaneli : Form
    {
        public GirisPaneli()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            HastaGiris hg = new HastaGiris();
            hg.Show();
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DoktorGiris dg = new DoktorGiris();
            dg.Show();
            this.Hide();
            
        }

        private void GirisPaneli_Load(object sender, EventArgs e)
        {

        }
    }
}
