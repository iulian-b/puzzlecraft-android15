.class public Lcom/fusepowered/ac/AdColonyNativeAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ac/AdColonyNativeAdView$b;,
        Lcom/fusepowered/ac/AdColonyNativeAdView$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

.field F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

.field G:Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;

.field H:Lcom/fusepowered/ac/ADCImage;

.field I:Lcom/fusepowered/ac/ADCImage;

.field J:Lcom/fusepowered/ac/ADCImage;

.field K:Landroid/widget/ImageView;

.field L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

.field M:Landroid/view/View;

.field N:Landroid/graphics/Bitmap;

.field O:Lcom/fusepowered/ac/ADCImage;

.field P:Landroid/widget/ImageView;

.field Q:Z

.field R:Landroid/widget/Button;

.field S:Ljava/lang/String;

.field T:Ljava/lang/String;

.field U:Ljava/lang/String;

.field V:Landroid/media/MediaPlayer;

.field W:Landroid/view/Surface;

.field Z:Ljava/lang/String;

.field a:Landroid/widget/TextView;

.field aa:Ljava/lang/String;

.field ab:Ljava/lang/String;

.field ac:Ljava/lang/String;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:I

.field ah:I

.field ai:I

.field aj:I

.field ak:I

.field al:I

.field am:I

.field an:I

.field ao:Lcom/fusepowered/ac/n$y;

.field ap:Lcom/fusepowered/ac/n$a;

.field aq:F

.field ar:F

.field as:F

.field at:Ljava/io/FileInputStream;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/app/Activity;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Landroid/view/ViewGroup;

.field h:Landroid/graphics/SurfaceTexture;

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x1000000

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v1, 0x1

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->y:Z

    .line 76
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->A:Z

    .line 96
    iput-boolean v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->S:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->T:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->U:Ljava/lang/String;

    .line 118
    const v0, -0x333334

    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->al:I

    .line 119
    iput v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->am:I

    .line 125
    iput v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aq:F

    .line 126
    iput v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    .line 137
    invoke-static {}, Lcom/fusepowered/ac/a;->e()V

    .line 138
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sput v4, Lcom/fusepowered/ac/a;->Y:I

    .line 141
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->d:Landroid/app/Activity;

    .line 142
    iput-object p2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->e:Ljava/lang/String;

    .line 143
    iput p3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    .line 145
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    .line 147
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->as:F

    .line 150
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 154
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 156
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 157
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 165
    :goto_0
    if-ge v0, v1, :cond_1

    :goto_1
    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->an:I

    .line 167
    new-instance v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-direct {v0, p2}, Lcom/fusepowered/ac/AdColonyInterstitialAd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    .line 169
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, p2, v1}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setBackgroundColor(I)V

    .line 174
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->a()V

    .line 175
    return-void

    .line 161
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 162
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 165
    goto :goto_1
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "is_private"    # Z

    .prologue
    const/high16 v3, -0x1000000

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v1, 0x1

    .line 179
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->y:Z

    .line 76
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->A:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->S:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->T:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->U:Ljava/lang/String;

    .line 118
    const v0, -0x333334

    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->al:I

    .line 119
    iput v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->am:I

    .line 125
    iput v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aq:F

    .line 126
    iput v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    .line 180
    invoke-static {}, Lcom/fusepowered/ac/a;->e()V

    .line 183
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->d:Landroid/app/Activity;

    .line 184
    iput-object p2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->e:Ljava/lang/String;

    .line 185
    iput p3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    .line 186
    iput-boolean p4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->D:Z

    .line 188
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    .line 190
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->as:F

    .line 193
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 197
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 198
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 199
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 200
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 208
    :goto_0
    if-ge v0, v1, :cond_1

    :goto_1
    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->an:I

    .line 210
    new-instance v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-direct {v0, p2}, Lcom/fusepowered/ac/AdColonyInterstitialAd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    .line 212
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 216
    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setBackgroundColor(I)V

    .line 217
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->a()V

    .line 218
    return-void

    .line 204
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 205
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 208
    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/16 v11, 0xe

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 225
    iput-boolean v8, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    .line 226
    iput-boolean v8, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->n:Z

    .line 227
    invoke-virtual {p0, v8}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setWillNotDraw(Z)V

    .line 229
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iput-object p0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->u:Lcom/fusepowered/ac/AdColonyNativeAdView;

    .line 231
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->y:Z

    if-eqz v0, :cond_e

    .line 233
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v8}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/c;->b(Ljava/lang/String;)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v9}, Lcom/fusepowered/ac/AdColonyInterstitialAd;->b(Z)Z

    .line 237
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->h:Lcom/fusepowered/ac/n$y;

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ao:Lcom/fusepowered/ac/n$y;

    .line 241
    const-string v0, "video_filepath"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->f:Ljava/lang/String;

    .line 242
    const-string v0, "advertiser_name"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Z:Ljava/lang/String;

    .line 243
    const-string v0, "description"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aa:Ljava/lang/String;

    .line 244
    const-string v0, "title"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ab:Ljava/lang/String;

    .line 245
    const-string v0, "poster_image"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ac:Ljava/lang/String;

    .line 246
    const-string v0, "unmute"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 247
    const-string v0, "mute"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 248
    const-string v0, "thumb_image"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 249
    const-string v0, "native_engagement_enabled"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    .line 250
    const-string v0, "native_engagement_label"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->S:Ljava/lang/String;

    .line 251
    const-string v0, "native_engagement_command"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->T:Ljava/lang/String;

    .line 252
    const-string v0, "native_engagement_type"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->U:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-boolean v0, v0, Lcom/fusepowered/ac/n$n;->b:Z

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->v:Z

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ao:Lcom/fusepowered/ac/n$y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ao:Lcom/fusepowered/ac/n$y;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$y;->k()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-boolean v0, v0, Lcom/fusepowered/ac/n$n;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->h:Lcom/fusepowered/ac/n$y;

    if-nez v0, :cond_5

    .line 258
    :cond_1
    const/16 v0, 0xd

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 380
    :cond_2
    :goto_2
    return-void

    .line 234
    :cond_3
    iput-boolean v9, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    goto/16 :goto_0

    .line 254
    :cond_4
    iput-boolean v9, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->v:Z

    goto :goto_1

    .line 261
    :cond_5
    iput-boolean v9, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->p:Z

    .line 262
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->D:Z

    if-nez v0, :cond_2

    .line 264
    iput-boolean v8, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->y:Z

    .line 270
    :cond_6
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget v0, v0, Lcom/fusepowered/ac/n$x;->c:I

    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ag:I

    .line 271
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget v0, v0, Lcom/fusepowered/ac/n$x;->d:I

    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ah:I

    .line 272
    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ah:I

    int-to-double v0, v0

    iget v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    int-to-double v2, v2

    iget v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ag:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    .line 273
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    if-eqz v0, :cond_7

    .line 275
    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    .line 276
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 278
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    int-to-double v4, v1

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->an:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 279
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 280
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->al:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 281
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->am:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    new-instance v1, Lcom/fusepowered/ac/AdColonyNativeAdView$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/AdColonyNativeAdView$1;-><init>(Lcom/fusepowered/ac/AdColonyNativeAdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    :cond_7
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ac:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    .line 323
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    iget v0, v0, Lcom/fusepowered/ac/ADCImage;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float v1, v10, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    iget v0, v0, Lcom/fusepowered/ac/ADCImage;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    .line 325
    :goto_3
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3, v9}, Lcom/fusepowered/ac/ADCImage;->a(DZ)V

    .line 326
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ad:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    .line 327
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ae:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    .line 328
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->af:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    .line 329
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x4016000000000000L    # 5.5

    div-double/2addr v4, v6

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    int-to-float v1, v1

    float-to-double v6, v1

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    div-float v1, v10, v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/fusepowered/ac/ADCImage;->a(DZ)V

    .line 330
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->as:F

    div-float/2addr v1, v12

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/fusepowered/ac/ADCImage;->a(DZ)V

    .line 331
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->as:F

    div-float/2addr v1, v12

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/fusepowered/ac/ADCImage;->a(DZ)V

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_8

    new-instance v0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/fusepowered/ac/AdColonyNativeAdView$a;-><init>(Lcom/fusepowered/ac/AdColonyNativeAdView;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->M:Landroid/view/View;

    .line 334
    :cond_8
    new-instance v0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;-><init>(Lcom/fusepowered/ac/AdColonyNativeAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    .line 335
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->P:Landroid/widget/ImageView;

    .line 336
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    .line 337
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->P:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    :goto_4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->f:I

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->g:I

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 342
    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 343
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    new-instance v2, Lcom/fusepowered/ac/AdColonyNativeAdView$2;

    invoke-direct {v2, p0}, Lcom/fusepowered/ac/AdColonyNativeAdView$2;-><init>(Lcom/fusepowered/ac/AdColonyNativeAdView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    .line 366
    iget-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :cond_9
    iget-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_b

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->M:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    iget v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/ac/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_c

    iput-boolean v9, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 373
    :cond_c
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    iget v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/ac/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->v:Z

    if-eqz v1, :cond_d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_d

    iget-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->A:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :cond_d
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    if-eqz v0, :cond_2

    .line 377
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    iget v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    div-int/lit8 v2, v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 378
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 266
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_6

    goto/16 :goto_2

    .line 323
    :cond_f
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->H:Lcom/fusepowered/ac/ADCImage;

    iget v0, v0, Lcom/fusepowered/ac/ADCImage;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    goto/16 :goto_3

    .line 340
    :cond_10
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4
.end method

.method a(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 392
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/AdColonyInterstitialAd;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/ac/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized b()V
    .locals 2

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 648
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 643
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setVolume(F)V

    .line 644
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 645
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 646
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->p:Z

    .line 647
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/fusepowered/ac/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/fusepowered/ac/AdColonyNativeAdView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 583
    if-eqz p1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 586
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    iget v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 592
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    if-nez v0, :cond_0

    .line 657
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 658
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 660
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 484
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native Ad Destroy called."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 485
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->W:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->W:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 487
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    .line 488
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method public getAdvertiserImage()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 496
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->af:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    .line 499
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->as:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/fusepowered/ac/ADCImage;->a(DZ)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->P:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 504
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->P:Landroid/widget/ImageView;

    .line 505
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->P:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->O:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->P:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdHeight()I
    .locals 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aj:I

    goto :goto_0
.end method

.method public getNativeAdWidth()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ai:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 387
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/AdColonyInterstitialAd;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->p:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->C:Z

    if-nez v1, :cond_0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAddedToListView()V
    .locals 4

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->k:Z

    if-nez v0, :cond_0

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->k:Z

    .line 827
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->M:Landroid/view/View;

    check-cast v0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->h:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->i:I

    iget v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 684
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iput-boolean v5, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->p:Z

    .line 689
    iput-boolean v5, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 690
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    .line 692
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iput v4, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->o:I

    .line 693
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 694
    const-string v1, "ad_slot"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v2, v2, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 695
    const-string v1, "replay"

    invoke-virtual {v0, v1, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 696
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 697
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    invoke-interface {v0, v4, p0}, Lcom/fusepowered/ac/AdColonyNativeAdListener;->onAdColonyNativeAdFinished(ZLcom/fusepowered/ac/AdColonyNativeAdView;)V

    .line 698
    :cond_0
    iput-boolean v5, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->z:Z

    .line 699
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 727
    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 729
    :cond_2
    iget-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ak:I

    .line 730
    :cond_3
    iget v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ak:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ak:I

    iput v2, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->o:I

    .line 732
    :cond_4
    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 734
    if-nez v1, :cond_5

    iget-boolean v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->l:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->l:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 735
    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_8

    .line 737
    :cond_6
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    if-nez v0, :cond_7

    .line 739
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Scroll Pause"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 740
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 741
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 742
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    invoke-virtual {v0, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 762
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->invalidate()V

    goto/16 :goto_0

    .line 745
    :cond_8
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 747
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    if-nez v0, :cond_9

    .line 749
    invoke-virtual {p1, v4, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_1

    .line 753
    :cond_9
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 755
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3, v1}, Lcom/fusepowered/ac/d;->a(DLcom/fusepowered/ac/AdColonyAd;)V

    goto :goto_1

    .line 758
    :cond_a
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->a:Z

    if-nez v0, :cond_7

    .line 760
    invoke-virtual {p1, v4, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_1
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 706
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    invoke-virtual {v0, v3}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iput-boolean v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 709
    iput-boolean v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    .line 711
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iput v3, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->o:I

    .line 712
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 667
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native Ad onPrepared called."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 668
    iput-boolean v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    .line 669
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0, v2}, Lcom/fusepowered/ac/AdColonyNativeAdView;->b(Z)V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setVolume(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 774
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 816
    :goto_0
    return v0

    .line 775
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 777
    if-ne v2, v1, :cond_3

    sget-boolean v2, Lcom/fusepowered/ac/a;->v:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 779
    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    sput-object v2, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    .line 780
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v4, v4, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/ac/c;->a(Ljava/lang/String;Lcom/fusepowered/ac/n$a;)V

    .line 781
    invoke-static {}, Lcom/fusepowered/ac/ADCVideo;->a()V

    .line 786
    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-boolean v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->z:Z

    iput-boolean v3, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->r:Z

    .line 789
    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iput-boolean v1, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->q:Z

    .line 790
    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v3, "native"

    iput-object v3, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 791
    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    const-string v3, "fullscreen"

    iput-object v3, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 792
    sput-boolean v0, Lcom/fusepowered/ac/a;->v:Z

    .line 793
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v2, "video_expanded"

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 794
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    invoke-interface {v0, v1, p0}, Lcom/fusepowered/ac/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/fusepowered/ac/AdColonyNativeAdView;)V

    .line 795
    :cond_1
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v0, :cond_4

    .line 797
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "Launching AdColonyOverlay"

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 798
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/fusepowered/ac/ACOActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 805
    :goto_1
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v2, v0, Lcom/fusepowered/ac/ag;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/fusepowered/ac/ag;->d:I

    .line 809
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    const-string v2, "start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"ad_slot\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v4, v4, Lcom/fusepowered/ac/AdColonyInterstitialAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v4, v4, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v4, v4, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"replay\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-boolean v4, v4, Lcom/fusepowered/ac/AdColonyInterstitialAd;->r:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3, v4}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 810
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyInterstitialAd;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyInterstitialAd;->i:Lcom/fusepowered/ac/n$a;

    iget v3, v3, Lcom/fusepowered/ac/n$a;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/t;->a(Ljava/lang/String;I)V

    .line 812
    :cond_2
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 813
    iput-boolean v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->z:Z

    :cond_3
    move v0, v1

    .line 816
    goto/16 :goto_0

    .line 802
    :cond_4
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 803
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/fusepowered/ac/ACFActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 545
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native Ad Pause called."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 546
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 548
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    .line 550
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 551
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :cond_0
    return-void
.end method

.method public prepareForListView()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->l:Z

    .line 832
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 564
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] Native Ad Resume called."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 565
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 567
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 568
    iput-boolean v3, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->s:Z

    .line 569
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iget v1, v1, Lcom/fusepowered/ac/AdColonyInterstitialAd;->o:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 570
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 571
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    :cond_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 451
    if-eqz p1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setVolume(F)V

    .line 456
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    .line 462
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 464
    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 466
    iget v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setVolume(F)V

    .line 473
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 470
    :cond_3
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->setVolume(F)V

    goto :goto_1
.end method

.method public setOverlayButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 411
    :cond_0
    iput p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->al:I

    .line 412
    return-void
.end method

.method public setOverlayButtonTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 420
    :cond_0
    iput p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->am:I

    .line 421
    return-void
.end method

.method public setOverlayButtonTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->R:Landroid/widget/Button;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 425
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 6
    .param p1, "v"    # F

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iput p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->ar:F

    .line 606
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_4

    .line 608
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 613
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_3

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 618
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    .line 619
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "sound_unmute"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    goto :goto_0

    .line 623
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->I:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->J:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->N:Landroid/graphics/Bitmap;

    .line 627
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->d:Lcom/fusepowered/ac/u;

    const-string v1, "sound_mute"

    iget-object v2, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->o:Z

    goto :goto_0

    .line 631
    :cond_4
    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 633
    iput p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->aq:F

    goto/16 :goto_0
.end method

.method public withListener(Lcom/fusepowered/ac/AdColonyNativeAdListener;)Lcom/fusepowered/ac/AdColonyNativeAdView;
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/ac/AdColonyNativeAdListener;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->F:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    .line 529
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->E:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    iput-object p1, v0, Lcom/fusepowered/ac/AdColonyInterstitialAd;->t:Lcom/fusepowered/ac/AdColonyNativeAdListener;

    .line 530
    return-object p0
.end method

.method public withMutedListener(Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;)Lcom/fusepowered/ac/AdColonyNativeAdView;
    .locals 0
    .param p1, "mute_listener"    # Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView;->G:Lcom/fusepowered/ac/AdColonyNativeAdMutedListener;

    .line 535
    return-object p0
.end method
