.class Lcom/fusepowered/ac/AdColonyNativeAdView$b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/AdColonyNativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/fusepowered/ac/AdColonyNativeAdView;


# direct methods
.method public constructor <init>(Lcom/fusepowered/ac/AdColonyNativeAdView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    .line 997
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 998
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1006
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    .line 1009
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1011
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->l:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->a:Z

    .line 1013
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    if-eqz v1, :cond_a

    .line 1015
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->l:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v1}, Lcom/fusepowered/ac/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 1017
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/AdColonyInterstitialAd;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->q:Z

    if-eqz v0, :cond_2

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->q:Z

    if-nez v0, :cond_7

    .line 1022
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native Ad Starting"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 1023
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->b()V

    .line 1024
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->q:Z

    .line 1025
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 1026
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 1047
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->a:Z

    .line 1053
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1055
    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 1060
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1062
    invoke-virtual {p0, v5}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1074
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->invalidate()V

    .line 1075
    :cond_6
    return-void

    .line 1029
    :cond_7
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/fusepowered/ac/a;->t:Z

    if-nez v0, :cond_9

    .line 1032
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native Ad Resuming"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 1033
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 1034
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/AdColonyNativeAdView;->b(Z)V

    .line 1035
    :cond_8
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setVolume(F)V

    .line 1036
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget v1, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->o:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1037
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_0

    .line 1039
    :cond_9
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->q:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v3}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1041
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 1042
    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1051
    :cond_a
    iput-boolean v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->a:Z

    goto/16 :goto_1

    .line 1065
    :cond_b
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    if-eqz v0, :cond_5

    .line 1068
    :cond_c
    const/16 v0, 0xff

    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1069
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->b:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method
