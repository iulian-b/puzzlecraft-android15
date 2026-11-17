.class Lcom/fusepowered/ac/AdColonyNativeAdView$a;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/AdColonyNativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/fusepowered/ac/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/AdColonyNativeAdView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView$a;-><init>(Lcom/fusepowered/ac/AdColonyNativeAdView;Landroid/content/Context;Z)V

    .line 848
    return-void
.end method

.method constructor <init>(Lcom/fusepowered/ac/AdColonyNativeAdView;Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 851
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    .line 852
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 840
    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->a:Z

    .line 841
    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->b:Z

    .line 853
    invoke-virtual {p0, p0}, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->setWillNotDraw(Z)V

    .line 855
    iput-boolean p3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->a:Z

    .line 856
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v4, 0x1

    .line 860
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-object p1, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->h:Landroid/graphics/SurfaceTexture;

    .line 862
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->a:Z

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->W:Landroid/view/Surface;

    .line 864
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput p2, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->i:I

    .line 866
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput p3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->j:I

    .line 867
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->at:Ljava/io/FileInputStream;

    .line 871
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->at:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 872
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->W:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 873
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 874
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 875
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 876
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 877
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native Ad Prepare called."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->b:Z

    .line 879
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 880
    new-instance v1, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;-><init>(Lcom/fusepowered/ac/AdColonyNativeAdView$a;)V

    .line 892
    iget-boolean v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->b:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 896
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 897
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 908
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native surface destroyed"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 909
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v2, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    .line 910
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 912
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 903
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] onSurfaceTextureSizeChanged"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 904
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 917
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 930
    if-ne v0, v4, :cond_0

    sget-boolean v0, Lcom/fusepowered/ac/a;->v:Z

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget v0, v0, Lcom/fusepowered/ac/ADCImage;->g:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    .line 933
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v4

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    sput-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    .line 935
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Lcom/fusepowered/ac/n$a;)V

    .line 936
    invoke-static {}, Lcom/fusepowered/ac/ADCVideo;->a()V

    .line 939
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 940
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "fullscreen"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 941
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->q:Z

    .line 944
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->z:Z

    iput-boolean v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->r:Z

    .line 946
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-interface {v0, v4, v1}, Lcom/fusepowered/ac/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/fusepowered/ac/AdColonyNativeAdView;)V

    .line 949
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 951
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/fusepowered/ac/ADCVideo;->c:I

    .line 952
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-wide v2, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->m:D

    iput-wide v2, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->n:D

    .line 953
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 954
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 961
    :goto_1
    sput-boolean v5, Lcom/fusepowered/ac/a;->v:Z

    .line 962
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "video_expanded"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 963
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v0, :cond_6

    .line 965
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Launching AdColonyOverlay"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 966
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/fusepowered/ac/ACOActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 974
    :goto_2
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-eqz v0, :cond_4

    .line 977
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v1, v0, Lcom/fusepowered/ac/ag;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fusepowered/ac/ag;->d:I

    .line 978
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    const-string v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyInterstitialAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v3, v3, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v3, v3, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"replay\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-boolean v3, v3, Lcom/fusepowered/ac/AdColonyInterstitialAd;->r:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 979
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget v2, v2, Lcom/fusepowered/ac/n$a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/t;->a(Ljava/lang/String;I)V

    .line 981
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->z:Z

    goto/16 :goto_0

    .line 958
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->n:D

    .line 959
    sput v5, Lcom/fusepowered/ac/ADCVideo;->c:I

    goto/16 :goto_1

    .line 970
    :cond_6
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 971
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/fusepowered/ac/ACFActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
