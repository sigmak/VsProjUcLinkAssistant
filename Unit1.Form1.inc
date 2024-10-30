procedure InitializeComponent;
    begin
        self.SuspendLayout();
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(758, 437);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.Load += Form1_Load;
        self.Resize += Form1_Resize;
        self.ResumeLayout(false);
    end;
