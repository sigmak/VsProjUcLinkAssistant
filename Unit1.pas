Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
  tabControl1 : TabControl;
  tabPage1 :TabPage;
  tabPage2 :TabPage;
  
  //tabPage1 용
  panel1 : Panel;
  label1,label2, label3 : &Label;
  tbPrjPath : TextBox;
  tbRealParentPath : TextBox;
  tbUcName : TextBox;
  btnOFD : Button;
  radioButton1, radioButton2 : RadioButton;
  btnConvert : Button;
 
  panel2 : Panel;
 
  panel3 : Panel;
  splitContainer1 : SplitContainer; 
  tbSrc : TextBox;
  tbTarget : TextBox;

  //tabPage2 용
  WpfPanel1 : Panel;
  WpfLabel1,WpfLabel2, WpfLabel3 : &Label;
  WpfTbPrjPath : TextBox;
  WpfTbRealParentPath : TextBox;
  WpfTbUcName : TextBox;
  WpfBtnOFD : Button;
  WpfRadioButton1, WpfRadioButton2 : RadioButton;
  WpfBtnConvert : Button;
 
  WpfPanel2 : Panel;
 
  WpfPanel3 : Panel;
  WpfSplitContainer1 : SplitContainer; 
  WpfTbSrc : TextBox;
  WpfTbTarget : TextBox;

    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure Form1_Resize(sender: Object; e: EventArgs);
    procedure btnOFD_Click(sender: Object; e: EventArgs);
    procedure btnConvert_Click(sender: Object; e: EventArgs);

    procedure WpfBtnOFD_Click(sender: Object; e: EventArgs);
    procedure WpfBtnConvert_Click(sender: Object; e: EventArgs);
    
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
      InitializeComponent2;
    end;
    procedure InitializeComponent2;
    begin
      
      tabControl1 := new TabControl();
      tabPage1 := new TabPage();
      tabPage2 := new TabPage();
      
      // 패널 및 컨트롤 초기화
      panel1 := new Panel();
      label1 := new &Label();
      tbPrjPath := new TextBox();
      label2 := new &Label();
      tbRealParentPath := new TextBox();
      btnOFD := new Button();
      label3 := new &Label();
      tbUcName := new TextBox();
      radioButton1 := new RadioButton();
      radioButton2 := new RadioButton();
      btnConvert := new Button();
      
      panel2 := new Panel();
      panel3 := new Panel();
      splitContainer1 := new SplitContainer();
      tbSrc := new TextBox();
      tbTarget := new TextBox();
    
    
      // 
      // tabControl1
      // 
      tabControl1.Controls.Add(self.tabPage1);
      tabControl1.Controls.Add(self.tabPage2);
      tabControl1.Location := new System.Drawing.Point(20, 189);
      tabControl1.Name := 'tabControl1';
      tabControl1.SelectedIndex := 0;
      tabControl1.Size := new System.Drawing.Size(418, 188);
      tabControl1.TabIndex := 3;
      tabControl1.Dock := DockStyle.Fill ;  
    
      // 
      // tabPage1
      // 
      tabPage1.Location := new System.Drawing.Point(4, 22);
      tabPage1.Name := 'tabPage1';
      tabPage1.Padding := new System.Windows.Forms.Padding(3);
      tabPage1.Size := new System.Drawing.Size(410, 162);
      tabPage1.TabIndex := 0;
      tabPage1.Text := 'VB.net 용 (vbproj 파일)';
      tabPage1.UseVisualStyleBackColor := true;
      // 
      // tabPage2
      // 
      tabPage2.Location := new System.Drawing.Point(4, 22);
      tabPage2.Name := 'tabPage2';
      tabPage2.Padding := new System.Windows.Forms.Padding(3);
      tabPage2.Size := new System.Drawing.Size(410, 162);
      tabPage2.TabIndex := 1;
      tabPage2.Text := 'C# WPF 용 (csproj 파일)';
      tabPage2.UseVisualStyleBackColor := true;
        
      // panel1 설정
      panel1.Dock := DockStyle.Top;
      panel1.BackColor := Color.LightYellow;
      
      label1.Location := new Point(5, 10);
      label1.Size := new System.Drawing.Size(155, 20);
      label1.Text := '프로젝트에서의 가상폴더:';
      label1.TabIndex := 0;
      panel1.Controls.Add(label1);
      
      tbPrjPath.Location := new Point(160, 5);
      tbPrjPath.Size := new System.Drawing.Size(150, 27);
      tbPrjPath.Text := '';//'WPF_LIB\WPF_CTL';
      tbPrjPath.TabIndex := 1;
      panel1.Controls.Add(tbPrjPath);
    
    
      label2.Location := new Point(380, 10);
      label2.Size := new System.Drawing.Size(150, 20);
      label2.Text := '실제 폴더 위치(부모폴더):';
      label2.TabIndex := 2;
      panel1.Controls.Add(label2);
      
      tbRealParentPath.Location := new Point(535, 5);
      tbRealParentPath.Size := new System.Drawing.Size(150, 27);
      tbRealParentPath.Text := ''; //WPF_LIB\WPF_CTL';
      tbRealParentPath.TabIndex := 3;
      panel1.Controls.Add(tbRealParentPath);
    
      // 
      // btnOFD
      // 
      btnOFD.Location := new System.Drawing.Point(690, 5);   // 위치 설정
      btnOFD.Name := 'btnOFD';                                 // 이름 설정
      btnOFD.Size := new System.Drawing.Size(50, 27);       // 크기 설정
      btnOFD.TabIndex := 4;                                  // Tab 인덱스 설정  
      btnOFD.Text := '...';                  // 텍스트 설정
      btnOFD.BackColor := Color.CornflowerBlue      ;
      btnOFD.ForeColor := Color.White;
      btnOFD.Click += btnOFD_Click;                            // Click 이벤트 헨들러 추가        
      panel1.Controls.Add(btnOFD);
    
      label3.Location := new Point(5, 40);
      label3.Size := new System.Drawing.Size(155, 20);
      label3.Text := '사용자정의 컨트롤 이름:';
      label3.TabIndex := 5;
      panel1.Controls.Add(label3);

      tbUcName.Location := new Point(160, 35);
      tbUcName.Size := new System.Drawing.Size(150, 27);
      tbUcName.Text := '';//
      tbUcName.TabIndex := 6;
      panel1.Controls.Add(tbUcName);
      
      radioButton1.Location := new Point(380, 35);
      radioButton1.Size := new System.Drawing.Size(90, 27);
      radioButton1.Text := 'GUI 방식(O)';
      radioButton1.Checked := True;
      radioButton1.TabIndex := 7;
      panel1.Controls.Add(radioButton1);
    

      radioButton2.Location := new Point(475, 35);
      radioButton2.Size := new System.Drawing.Size(90, 27);
      radioButton2.Text := 'GUI 방식(X)';
      radioButton2.TabIndex := 8;
      panel1.Controls.Add(radioButton2);

      // 
      // btnConvert
      // 
      btnConvert.Location := new System.Drawing.Point(310, 65);   // 위치 설정
      btnConvert.Name := 'btnConvert';                                 // 이름 설정
      btnConvert.Size := new System.Drawing.Size(90, 27);       // 크기 설정
      btnConvert.TabIndex := 9;                                  // Tab 인덱스 설정  
      btnConvert.Text := '변환하기';                  // 텍스트 설정
      btnConvert.BackColor := Color.CornflowerBlue      ;
      btnConvert.ForeColor := Color.White;
      btnConvert.Click += btnConvert_Click;                            // Click 이벤트 헨들러 추가        
      panel1.Controls.Add(btnConvert);


      // panel2 설정
      panel2.Dock := DockStyle.Bottom;
      panel2.BackColor := Color.LightYellow;
    
      // panel3 설정
      panel3.Dock := DockStyle.Fill;
      panel3.BackColor := Color.LightBlue;
    
      // splitContainer1 초기화 및 설정
      splitContainer1.Dock := DockStyle.Fill;
      splitContainer1.Name := 'splitContainer1';
      splitContainer1.BackColor := Color.LightPink;
      splitContainer1.SplitterDistance := splitContainer1.Width div 2; 
    
      // tbSrc 설정
      tbSrc.Dock := DockStyle.Fill;
      tbSrc.Multiline := True;
      tbSrc.ScrollBars := ScrollBars.Both;
      tbSrc.Text := '';
    
      // tbTarget 설정
      tbTarget.Dock := DockStyle.Fill;
      tbTarget.Multiline := True;
      tbTarget.ScrollBars := ScrollBars.Both;
      tbTarget.Text := '';
    
      // splitContainer1 패널에 텍스트 박스 추가
      splitContainer1.Panel1.Controls.Add(tbSrc);
      splitContainer1.Panel2.Controls.Add(tbTarget);
    
      // panel3에 splitContainer1 추가
      panel3.Controls.Add(splitContainer1);
    
      tabPage1.Controls.Add(panel3);
      tabPage1.Controls.Add(panel2);
      tabPage1.Controls.Add(panel1);
      //------------------------------------------------
      

      // 패널 및 컨트롤 초기화
      WpfPanel1 := new Panel();
      WpfLabel1 := new &Label();
      WpfTbPrjPath := new TextBox();
      WpfLabel2 := new &Label();
      WpfTbRealParentPath := new TextBox();
      WpfBtnOFD := new Button();
      WpfLabel3 := new &Label();
      WpfTbUcName := new TextBox();
      WpfRadioButton1 := new RadioButton();
      WpfRadioButton2 := new RadioButton();
      WpfBtnConvert := new Button();
      
      WpfPanel2 := new Panel();
      WpfPanel3 := new Panel();
      WpfSplitContainer1 := new SplitContainer();
      WpfTbSrc := new TextBox();
      WpfTbTarget := new TextBox();
    
      // WpfPanel1 설정
      WpfPanel1.Dock := DockStyle.Top;
      WpfPanel1.BackColor := Color.LightYellow;
      
      WpfLabel1.Location := new Point(5, 10);
      WpfLabel1.Name := 'WpfLabel1';
      WpfLabel1.Size := new System.Drawing.Size(155, 20);
      WpfLabel1.Text := '프로젝트에서의 가상폴더:';
      WpfLabel1.TabIndex := 0;
      WpfPanel1.Controls.Add(WpfLabel1);
      
      WpfTbPrjPath.Location := new Point(160, 5);
      WpfTbPrjPath.Name := 'WpfTbPrjPath';
      WpfTbPrjPath.Size := new System.Drawing.Size(150, 27);
      WpfTbPrjPath.Text := '';//'WPF_LIB\WPF_CTL';
      WpfTbPrjPath.TabIndex := 1;
      WpfPanel1.Controls.Add(WpfTbPrjPath);
        
      WpfLabel2.Location := new Point(380, 10);
      WpfLabel2.Name := 'WpfLabel2';
      WpfLabel2.Size := new System.Drawing.Size(150, 20);
      WpfLabel2.Text := '실제 폴더 위치(부모폴더):';
      WpfLabel2.TabIndex := 2;
      WpfPanel1.Controls.Add(WpfLabel2);
      
      WpfTbRealParentPath.Location := new Point(535, 5);
      WpfTbRealParentPath.Name := 'WpfTbRealParentPath';
      WpfTbRealParentPath.Size := new System.Drawing.Size(150, 27);
      WpfTbRealParentPath.Text := ''; //WPF_LIB\WPF_CTL';
      WpfTbRealParentPath.TabIndex := 3;
      WpfPanel1.Controls.Add(WpfTbRealParentPath);
    
      // 
      // WpfBtnOFD
      // 
      WpfBtnOFD.Location := new System.Drawing.Point(690, 5);   // 위치 설정
      WpfBtnOFD.Name := 'WpfBtnOFD';                                 // 이름 설정
      WpfBtnOFD.Size := new System.Drawing.Size(50, 27);       // 크기 설정
      WpfBtnOFD.TabIndex := 4;                                  // Tab 인덱스 설정  
      WpfBtnOFD.Text := '...';                  // 텍스트 설정
      WpfBtnOFD.BackColor := Color.CornflowerBlue      ;
      WpfBtnOFD.ForeColor := Color.White;
      WpfBtnOFD.Click += WpfBtnOFD_Click;                            // Click 이벤트 헨들러 추가        
      WpfPanel1.Controls.Add(WpfBtnOFD);
    
      WpfLabel3.Location := new Point(5, 40);
      WpfLabel3.Name := 'WpfLabel3';                                 // 이름 설정
      WpfLabel3.Size := new System.Drawing.Size(155, 20);
      WpfLabel3.Text := '사용자정의 컨트롤 이름:';
      WpfLabel3.TabIndex := 5;
      WpfPanel1.Controls.Add(WpfLabel3);

      WpfTbUcName.Location := new Point(160, 35);
      WpfTbUcName.Name := 'WpfTbUcName';                                 // 이름 설정
      WpfTbUcName.Size := new System.Drawing.Size(150, 27);
      WpfTbUcName.Text := '';//
      WpfTbUcName.TabIndex := 6;
      WpfPanel1.Controls.Add(WpfTbUcName);
      
      WpfRadioButton1.Location := new Point(380, 35);
      WpfRadioButton1.Name := 'WpfRadioButton1';                                 // 이름 설정
      WpfRadioButton1.Size := new System.Drawing.Size(90, 27);
      WpfRadioButton1.Text := 'GUI 방식(O)';
      WpfRadioButton1.Checked := True;
      WpfRadioButton1.TabIndex := 7;
      WpfPanel1.Controls.Add(WpfRadioButton1);
    

      WpfRadioButton2.Location := new Point(475, 35);
      WpfRadioButton2.Name := 'WpfRadioButton2';                                 // 이름 설정
      WpfRadioButton2.Size := new System.Drawing.Size(90, 27);
      WpfRadioButton2.Text := 'GUI 방식(X)';
      WpfRadioButton2.TabIndex := 8;
      WpfPanel1.Controls.Add(WpfRadioButton2);

      // 
      // WpfBtnConvert
      // 
      WpfBtnConvert.Location := new System.Drawing.Point(310, 65);   // 위치 설정
      WpfBtnConvert.Name := 'WpfBtnConvert';                                 // 이름 설정
      WpfBtnConvert.Size := new System.Drawing.Size(90, 27);       // 크기 설정
      WpfBtnConvert.TabIndex := 9;                                  // Tab 인덱스 설정  
      WpfBtnConvert.Text := '변환하기';                  // 텍스트 설정
      WpfBtnConvert.BackColor := Color.CornflowerBlue      ;
      WpfBtnConvert.ForeColor := Color.White;
      WpfBtnConvert.Click += WpfBtnConvert_Click;                            // Click 이벤트 헨들러 추가        
      WpfPanel1.Controls.Add(WpfBtnConvert);


      // WpfPanel2 설정
      WpfPanel2.Dock := DockStyle.Bottom;
      WpfPanel2.BackColor := Color.LightYellow;
    
      // WpfPanel3 설정
      WpfPanel3.Dock := DockStyle.Fill;
      WpfPanel3.BackColor := Color.LightBlue;
    
      // WpfSplitContainer1 초기화 및 설정
      WpfSplitContainer1.Dock := DockStyle.Fill;
      WpfSplitContainer1.Name := 'WpfSplitContainer1';
      WpfSplitContainer1.BackColor := Color.LightPink;
      WpfSplitContainer1.SplitterDistance := WpfSplitContainer1.Width div 2; 
    
      // WpfTbSrc 설정
      WpfTbSrc.Dock := DockStyle.Fill;
      WpfTbSrc.Name := 'WpfTbSrc';
      WpfTbSrc.Multiline := True;
      WpfTbSrc.ScrollBars := ScrollBars.Both;
      WpfTbSrc.Text := '';
    
      // WpfTbTarget 설정
      WpfTbTarget.Dock := DockStyle.Fill;
      WpfTbTarget.Name := 'WpfTbTarget';
      WpfTbTarget.Multiline := True;
      WpfTbTarget.ScrollBars := ScrollBars.Both;
      WpfTbTarget.Text := '';
    
      // WpfSplitContainer1 패널에 텍스트 박스 추가
      WpfSplitContainer1.Panel1.Controls.Add(WpfTbSrc);
      WpfSplitContainer1.Panel2.Controls.Add(WpfTbTarget);
    
      // WpfPanel3에 WpfSplitContainer1 추가
      WpfPanel3.Controls.Add(WpfSplitContainer1);
    
      tabPage2.Controls.Add(WpfPanel3);
      tabPage2.Controls.Add(WpfPanel2);
      tabPage2.Controls.Add(WpfPanel1);
      //------------------------------------------------

    
      // 폼에 패널들 추가
      self.Controls.Add(tabControl1);
      
      //self.Controls.Add(panel3);
      //self.Controls.Add(panel2);
      //self.Controls.Add(panel1);
    
      // 폼의 Load 이벤트에서 레이아웃 강제 갱신
      self.Load += procedure(sender: Object; e: EventArgs) -> 
      begin
        panel3.PerformLayout();
        splitContainer1.PerformLayout();
        tbSrc.PerformLayout();
        tbTarget.PerformLayout();
        //-------------------------
        WpfPanel3.PerformLayout();
        WpfSplitContainer1.PerformLayout();
        WpfTbSrc.PerformLayout();
        WpfTbTarget.PerformLayout();
        
      end;
    
      // 폼 크기 조정 시 레이아웃 갱신
      self.Resize += procedure(sender: Object; e: EventArgs) -> 
      begin
        splitContainer1.Refresh();
        WpfSplitContainer1.Refresh();
      end;      
      
    end;
  end;

implementation

  procedure Form1.Form1_Load(sender: Object; e: EventArgs);
  begin
    //--
    tbPrjPath.Text := 'HNS_LIB2\HNS_CTL2';
    tbUcName.Text := 'use_Calendar';
    tbRealParentPath.Text := 'D:\2024_proj';

    //--
    WpfTbPrjPath.Text := 'WPF_LIB\WPF_CTL';
    WpfTbUcName.Text := 'use_Calendar';
    WpfTbRealParentPath.Text := 'D:\2024_proj\WPF_ERP';
  
  end;

  procedure Form1.Form1_Resize(sender: Object; e: EventArgs);
  begin
    //--
  
  end;
  procedure Form1.btnOFD_Click(sender: Object; e: EventArgs);
  var
    foldPath : string;  
    dialog := new FolderBrowserDialog();  // FolderBrowserDialog 인스턴스 생성
  begin
    
     dialog.Description := '폴더를 선택하세요'; // 다이얼로그 설명 설정
     dialog.ShowNewFolderButton := False;       // 새로운 폴더 생성 버튼 표시 여부
     
     foldPath:='';
    // 다이얼로그 표시 및 선택된 경로 확인
    if dialog.ShowDialog() = System.Windows.Forms.DialogResult.Ok then
      //MessageBox.Show('선택된 폴더 경로: ' + dialog.SelectedPath)  // 선택된 경로 출력
       foldPath := dialog.SelectedPath // 선택된 경로
    else
      MessageBox.Show('폴더가 선택되지 않았습니다.');     
    
    if foldPath<>'' then
      tbRealParentPath.Text := foldPath;
    
     

  end;    
  
  
  //TabPage1용
  procedure Form1.btnConvert_Click(sender: Object; e: EventArgs);
  var
    sbSrc: StringBuilder;
    sbTarget: StringBuilder;

  begin
    sbSrc := new StringBuilder;
    sbTarget := new StringBuilder;
    if radioButton1.Checked = True then
    begin
    {
        <Compile Include="HNS_LIB2\HNS_CTL2\use_Calendar.designer.vb">
          <DependentUpon>use_Calendar.vb</DependentUpon>
        </Compile>
        <Compile Include="HNS_LIB2\HNS_CTL2\use_Calendar.vb">
          <SubType>UserControl</SubType>
        </Compile>
    }    
    {
        <EmbeddedResource Include="HNS_LIB2\HNS_CTL2\use_Calendar.resx">
          <DependentUpon>use_Calendar.vb</DependentUpon>
        </EmbeddedResource>
    }    
    
        sbSrc.Append('...' + Environment.NewLine);
        sbSrc.Append('<Compile Include="' + tbPrjPath.Text + '\' + tbUcName.Text + '.Designer.vb">'  + Environment.NewLine);
        sbSrc.Append('  <DependentUpon>' + tbUcName.Text + '.vb</DependentUpon>'  + Environment.NewLine);
        sbSrc.Append('</Compile>'  + Environment.NewLine);
        sbSrc.Append('<Compile Include="' + tbPrjPath.Text + '\' + tbUcName.Text + '.vb">'  + Environment.NewLine);
        sbSrc.Append('  <SubType>' + 'UserControl' + '</SubType>'  + Environment.NewLine);
        sbSrc.Append('</Compile>'  + Environment.NewLine);
        sbSrc.Append('...'  + Environment.NewLine);
        sbSrc.Append('<EmbeddedResource Include="'+ tbPrjPath.Text + '\' + tbUcName.Text + '.resx">'  + Environment.NewLine);
        sbSrc.Append('  <DependentUpon>' + tbUcName.Text + '.vb</DependentUpon>'  + Environment.NewLine);
        sbSrc.Append('</EmbeddedResource>'  + Environment.NewLine);
        sbSrc.Append('...'  + Environment.NewLine);
        tbSrc.Text := sbSrc.ToString();
    
    {
        <Compile Include="D:\2024_proj\HNS_LIB2\HNS_CTL2\use_Calendar.Designer.vb">
          <DependentUpon>use_Calendar.vb</DependentUpon>
          <Link>HNS_LIB2\HNS_CTL2\use_Calendar.Designer.vb</Link>
        </Compile>
        <Compile Include="D:\2024_proj\HNS_LIB2\HNS_CTL2\use_Calendar.vb">
          <Link>HNS_LIB2\HNS_CTL2\use_Calendar.vb</Link>
          <SubType>UserControl</SubType>
        </Compile>
    }
    {
        <EmbeddedResource Include="D:\2024_proj\HNS_LIB2\HNS_CTL2\use_Calendar.resx">
          <DependentUpon>use_Calendar.vb</DependentUpon>
          <Link>HNS_LIB2\HNS_CTL2\use_Calendar.resx</Link>
        </EmbeddedResource>
    }
        sbTarget.Append('...' + Environment.NewLine);
        sbTarget.Append('<Compile Include="' + tbRealParentPath.Text + '\' + tbPrjPath.Text + '\' + tbUcName.Text + '.Designer.vb">'  + Environment.NewLine);
        sbTarget.Append('  <DependentUpon>' + tbUcName.Text + '.vb</DependentUpon>'  + Environment.NewLine);
        sbTarget.Append('  <Link>' + tbPrjPath.Text + '\' + tbUcName.Text + '.Designer.vb</Link>'  + Environment.NewLine);
        sbTarget.Append('</Compile>'  + Environment.NewLine);
    
        sbTarget.Append('<Compile Include="' + tbRealParentPath.Text + '\' + tbPrjPath.Text + '\' + tbUcName.Text + '.vb">'  + Environment.NewLine);
        sbTarget.Append('  <Link>' + tbPrjPath.Text + '\' + tbUcName.Text + '.vb</Link>'  + Environment.NewLine);
        sbTarget.Append('  <SubType>' + 'UserControl' + '</SubType>'  + Environment.NewLine);
        sbTarget.Append('</Compile>'  + Environment.NewLine);
        sbTarget.Append('...'  + Environment.NewLine);
    
        sbTarget.Append('<EmbeddedResource Include="' + tbRealParentPath.Text + '\'  + tbPrjPath.Text + '\' + tbUcName.Text + '.resx">'  + Environment.NewLine);
        sbTarget.Append('  <DependentUpon>' + tbUcName.Text + '.vb</DependentUpon>'  + Environment.NewLine);
        sbTarget.Append('  <Link>' + tbPrjPath.Text + '\' + tbUcName.Text + '.resx</Link>'  + Environment.NewLine);
        sbTarget.Append('</EmbeddedResource>'  + Environment.NewLine);
        sbTarget.Append('...'  + Environment.NewLine);
        tbTarget.Text := sbTarget.ToString();      
      
    end
    else
     begin
    
     end;
   end;  
   
  procedure Form1.WpfBtnOFD_Click(sender: Object; e: EventArgs);
  var
    WpfFoldPath : string;  
    WpfDialog := new FolderBrowserDialog();  // FolderBrowserDialog 인스턴스 생성
  begin
    
     WpfDialog.Description := '폴더를 선택하세요'; // 다이얼로그 설명 설정
     WpfDialog.ShowNewFolderButton := False;       // 새로운 폴더 생성 버튼 표시 여부
     
     WpfFoldPath:='';
    // 다이얼로그 표시 및 선택된 경로 확인
    if WpfDialog.ShowDialog() = System.Windows.Forms.DialogResult.Ok then
      //MessageBox.Show('선택된 폴더 경로: ' + dialog.SelectedPath)  // 선택된 경로 출력
       WpfFoldPath := WpfDialog.SelectedPath // 선택된 경로
    else
      MessageBox.Show('폴더가 선택되지 않았습니다.');     
    
    if WpfFoldPath<>'' then
      WpfTbRealParentPath.Text := WpfFoldPath;
    
     

  end;    
    
    procedure Form1.WpfBtnConvert_Click(sender: Object; e: EventArgs);
  var
    WpfSbSrc: StringBuilder;
    WpfSbTarget: StringBuilder;

  begin
    WpfSbSrc := new StringBuilder;
    WpfSbTarget := new StringBuilder;
    if WpfRadioButton1.Checked = True then
    begin
    {
    <Compile Include="WPF_LIB\WPF_CTL\use_Calendar.xaml.cs" />

    }    
    {
    <Page Include="WPF_LIB\WPF_CTL\use_Calendar.xaml">
      <Generator>MSBuild:Compile</Generator>
      <SubType>Designer</SubType>
    </Page>
    }    
    
        WpfSbSrc.Append('...' + Environment.NewLine);
        WpfSbSrc.Append('<Compile Include="' + WpfTbPrjPath.Text + '\' + WpfTbUcName.Text + '.xaml.cs" />'  + Environment.NewLine);
        WpfSbSrc.Append('...' + Environment.NewLine);
        WpfSbSrc.Append('<Page Include="' + WpfTbPrjPath.Text + '\' + WpfTbUcName.Text + '.xaml">'  + Environment.NewLine);
        WpfSbSrc.Append('  <Generator>' + 'MSBuild:Compile' + '</Generator>'  + Environment.NewLine);
        WpfSbSrc.Append('  <SubType>' + 'Designer' + '</SubType>'  + Environment.NewLine);
        WpfSbSrc.Append('</Page>'  + Environment.NewLine);
        WpfSbSrc.Append('...'  + Environment.NewLine);
        WpfTbSrc.Text := WpfSbSrc.ToString();
    
    {
    <Compile Include="D:\2024_proj\WPF_ERP\WPF_LIB\WPF_CTL\use_Calendar.xaml.cs" >
      <DependentUpon>use_Calendar.xaml</DependentUpon>
      <Link>WPF_LIB\WPF_CTL\use_Calendar.xaml.cs</Link>
    </Compile>
    }
    {
    <Page Include="D:\2024_proj\WPF_ERP\WPF_LIB\WPF_CTL\use_Calendar.xaml">
      <Generator>MSBuild:Compile</Generator>
      <SubType>Designer</SubType>
    </Page>
    }
        WpfSbTarget.Append('...' + Environment.NewLine);
        WpfSbTarget.Append('<Compile Include="' + WpfTbRealParentPath.Text + '\' + WpfTbPrjPath.Text + '\' + WpfTbUcName.Text + '.xaml.cs">'  + Environment.NewLine);
        WpfSbTarget.Append('  <DependentUpon>' + WpfTbUcName.Text + '.xaml</DependentUpon>'  + Environment.NewLine);
        WpfSbTarget.Append('  <Link>' + WpfTbPrjPath.Text + '\' + WpfTbUcName.Text + '.xaml.cs</Link>'  + Environment.NewLine);
        WpfSbTarget.Append('</Compile>'  + Environment.NewLine);
        WpfSbTarget.Append('...'  + Environment.NewLine);
        WpfSbTarget.Append('<Page Include="' + WpfTbRealParentPath.Text + '\' + WpfTbPrjPath.Text + '\' + WpfTbUcName.Text + '.xaml">'  + Environment.NewLine);
        WpfSbTarget.Append('  <Generator>' + 'MSBuild:Compile' + '</Generator>'  + Environment.NewLine);
        WpfSbTarget.Append('  <SubType>' + 'Designer' + '</SubType>'  + Environment.NewLine);
        WpfSbTarget.Append('</Compile>'  + Environment.NewLine);
        WpfSbTarget.Append('...'  + Environment.NewLine);
    
        WpfTbTarget.Text := WpfSbTarget.ToString();      
      
    end
    else
     begin
    
     end;



  end;    



end.
