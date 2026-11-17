.class Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
.super Landroid/widget/RelativeLayout;
.source "ComplexVideoPlayerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controls"
.end annotation


# instance fields
.field private close:Landroid/widget/Button;

.field private customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

.field private duration:Landroid/widget/TextView;

.field private elapsed:Landroid/widget/TextView;

.field private playPause:Landroid/widget/Button;

.field private progressLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 637
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .line 638
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 630
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    .line 631
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    .line 632
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    .line 633
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    .line 634
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    .line 635
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    .line 639
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setupLayout()V

    .line 640
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->createCloseButton(Landroid/content/Context;)V

    .line 641
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->createProgressLayout(Landroid/content/Context;)V

    .line 642
    invoke-direct {p0, p2}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->createCustomProgressBar(Landroid/content/Context;)V

    .line 643
    return-void
.end method

.method static synthetic access$1300(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    return-object v0
.end method

.method private createCloseButton(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 670
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1800()Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    move-result-object v1

    iget v1, v1, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    invoke-static {}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1800()Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;

    move-result-object v2

    iget v2, v2, Lcom/fusepowered/nx/monetization/ui/ScreenDependentSize;->size:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 671
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 672
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 673
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    .line 674
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    sget-object v2, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CLOSE_BUTTON_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v1, v2}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)V

    .line 676
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 677
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->addView(Landroid/view/View;)V

    .line 678
    return-void
.end method

.method private createCustomProgressBar(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 682
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 683
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 685
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 686
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    invoke-direct {v3, p1}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    .line 687
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    invoke-virtual {v3, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setMax(I)V

    .line 689
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    const/16 v4, 0x3ec

    invoke-virtual {v3, v4}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setId(I)V

    .line 691
    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {p1, v3}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v2

    .line 692
    .local v2, "playSize":I
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p1, v3}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v1

    .line 693
    .local v1, "playMargins":I
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    .line 694
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 695
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1, v8, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 696
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 698
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    sget-object v4, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAY_BUTTON_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v3, v4}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)V

    .line 700
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    .line 701
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 702
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 704
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    sget-object v4, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_ELAPSED_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 705
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 707
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    .line 708
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 709
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    sget-object v4, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_DURATION_TEXT_COLOR:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 711
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    const/16 v4, 0x3ee

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 712
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 714
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 715
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 716
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 717
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 718
    return-void
.end method

.method private createProgressLayout(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    .line 659
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    .line 660
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 661
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 662
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 663
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 665
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->addView(Landroid/view/View;)V

    .line 666
    return-void
.end method

.method private setupLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0xa

    .line 652
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 653
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 654
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    return-void
.end method


# virtual methods
.method public clearAnimations()V
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->clearAnimation()V

    .line 647
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 648
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 649
    return-void
.end method

.method public hidePlayPauseButton()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 736
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAY_BUTTON_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)V

    .line 731
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PAUSE_BUTTON_BACKGROUND:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)V

    .line 727
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->release()V

    .line 749
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->removeAllViews()V

    .line 750
    return-void
.end method

.method public setOnPlayPauseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    return-void
.end method

.method public showPlayPauseButton()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 741
    return-void
.end method
