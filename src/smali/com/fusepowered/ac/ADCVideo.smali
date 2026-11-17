.class public abstract Lcom/fusepowered/ac/ADCVideo;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ac/ADCVideo$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:Z

.field static e:Z

.field static f:Z

.field static g:Z

.field static h:Landroid/app/Activity;

.field static i:Z

.field static j:Z


# instance fields
.field A:Ljava/lang/String;

.field B:Z

.field C:Z

.field D:Lcom/fusepowered/ac/e;

.field E:Lcom/fusepowered/ac/ae;

.field F:Lcom/fusepowered/ac/AdColonyAd;

.field G:Landroid/widget/VideoView;

.field H:Landroid/widget/FrameLayout;

.field I:Landroid/widget/FrameLayout;

.field J:Landroid/widget/FrameLayout;

.field K:Landroid/graphics/Rect;

.field L:Lcom/fusepowered/ac/ADCImage;

.field M:Lcom/fusepowered/ac/ADCVideo$a;

.field N:Ljava/io/FileInputStream;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:D

.field q:D

.field r:J

.field s:J

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->A:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/fusepowered/ac/ADCVideo;->B:Z

    .line 80
    iput-boolean v1, p0, Lcom/fusepowered/ac/ADCVideo;->C:Z

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->K:Landroid/graphics/Rect;

    .line 581
    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    sput v0, Lcom/fusepowered/ac/ADCVideo;->a:I

    .line 107
    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    .line 108
    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->e:Z

    .line 109
    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->g:Z

    .line 110
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 539
    iput-object p1, p0, Lcom/fusepowered/ac/ADCVideo;->A:Ljava/lang/String;

    .line 540
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->g:Z

    .line 541
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    .line 543
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 548
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 549
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 551
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget v3, p0, Lcom/fusepowered/ac/ADCVideo;->u:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 553
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->M:Lcom/fusepowered/ac/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 555
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 557
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    new-instance v1, Lcom/fusepowered/ac/ADCVideo$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/ADCVideo$2;-><init>(Lcom/fusepowered/ac/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 567
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    new-instance v1, Lcom/fusepowered/ac/ADCVideo$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/ADCVideo$3;-><init>(Lcom/fusepowered/ac/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 575
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 576
    return-void
.end method

.method b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/ADCVideo;->t:I

    .line 326
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/ADCVideo;->u:I

    .line 328
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/fusepowered/ac/ADCVideo;->z:I

    .line 330
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/fusepowered/ac/ADCVideo;->z:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget v1, p0, Lcom/fusepowered/ac/ADCVideo;->t:I

    .line 333
    iget v2, p0, Lcom/fusepowered/ac/ADCVideo;->u:I

    .line 335
    iput v1, p0, Lcom/fusepowered/ac/ADCVideo;->x:I

    .line 336
    iput v2, p0, Lcom/fusepowered/ac/ADCVideo;->y:I

    .line 338
    sget-boolean v1, Lcom/fusepowered/ac/a;->B:Z

    if-eqz v1, :cond_0

    .line 340
    sput-boolean v0, Lcom/fusepowered/ac/a;->B:Z

    .line 341
    const/4 v0, 0x1

    .line 343
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    sput-boolean v2, Lcom/fusepowered/ac/a;->W:Z

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    sput-object p0, Lcom/fusepowered/ac/ADCVideo;->h:Landroid/app/Activity;

    .line 123
    const-string v0, "video_enabled"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/fusepowered/ac/a;->O:Z

    .line 124
    const-string v0, "end_card_enabled"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/fusepowered/ac/a;->N:Z

    .line 125
    const-string v0, "load_timeout_enabled"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->i(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/fusepowered/ac/a;->P:Z

    .line 126
    const-string v0, "load_timeout"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fusepowered/ac/a;->Q:I

    move v3, v2

    .line 128
    :goto_2
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 130
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/AdColonyNativeAdView;

    .line 133
    iget-object v5, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->M:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    iget-object v5, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 123
    goto :goto_0

    :cond_3
    move v0, v2

    .line 124
    goto :goto_1

    .line 139
    :cond_4
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    .line 140
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->finish()V

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyAd;->r:Z

    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->e:Z

    .line 144
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ADCVideo;->requestWindowFeature(I)Z

    .line 147
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v5, 0x400

    invoke-virtual {v0, v3, v5}, Landroid/view/Window;->setFlags(II)V

    .line 150
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-nez v0, :cond_7

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_6

    .line 156
    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/ADCVideo;->setRequestedOrientation(I)V

    .line 211
    :goto_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->setVolumeControlStream(I)V

    .line 214
    new-instance v0, Lcom/fusepowered/ac/e;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    .line 215
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    .line 216
    new-instance v0, Lcom/fusepowered/ac/ae;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/ae;-><init>(Lcom/fusepowered/ac/ADCVideo;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    .line 217
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    .line 218
    new-instance v0, Lcom/fusepowered/ac/ADCVideo$a;

    invoke-direct {v0, p0, p0}, Lcom/fusepowered/ac/ADCVideo$a;-><init>(Lcom/fusepowered/ac/ADCVideo;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->M:Lcom/fusepowered/ac/ADCVideo$a;

    .line 219
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v1, "browser_icon"

    invoke-static {v1}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->L:Lcom/fusepowered/ac/ADCImage;

    .line 222
    sput-boolean v2, Lcom/fusepowered/ac/ACBActivity;->A:Z

    .line 225
    sput-object p0, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    .line 226
    sput-object p0, Lcom/fusepowered/ac/a;->J:Lcom/fusepowered/ac/ADCVideo;

    .line 227
    return-void

    .line 161
    :cond_6
    invoke-virtual {p0, v2}, Lcom/fusepowered/ac/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 169
    if-eqz v3, :cond_8

    if-eq v3, v4, :cond_8

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    :cond_8
    move v0, v4

    :goto_4
    sput v0, Lcom/fusepowered/ac/a;->w:I

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 178
    sget v0, Lcom/fusepowered/ac/a;->w:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_3

    .line 169
    :cond_9
    const/4 v0, 0x7

    goto :goto_4

    .line 183
    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->getRequestedOrientation()I

    .line 186
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 187
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 188
    packed-switch v0, :pswitch_data_0

    .line 200
    const/16 v1, 0x8

    .line 205
    :goto_5
    :pswitch_0
    sput v1, Lcom/fusepowered/ac/a;->w:I

    .line 206
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ADCVideo;->setRequestedOrientation(I)V

    goto/16 :goto_3

    :pswitch_1
    move v1, v2

    .line 195
    goto :goto_5

    .line 197
    :pswitch_2
    const/16 v1, 0x9

    .line 198
    goto :goto_5

    :cond_b
    move v1, v3

    goto :goto_5

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 303
    sget-boolean v0, Lcom/fusepowered/ac/a;->W:Z

    if-nez v0, :cond_0

    .line 312
    :cond_0
    sput-boolean v1, Lcom/fusepowered/ac/a;->v:Z

    .line 313
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    .line 314
    sput-boolean v1, Lcom/fusepowered/ac/a;->W:Z

    .line 315
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 528
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 529
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 480
    sget-object v1, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    invoke-virtual {v1, p1, p2}, Lcom/fusepowered/ac/w;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 486
    sget-boolean v1, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v1, :cond_3

    .line 488
    sget-boolean v1, Lcom/fusepowered/ac/ADCVideo;->g:Z

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 491
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusepowered/ac/ADCVideo;->g:Z

    .line 492
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 493
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ADCVideo;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget v1, v1, Lcom/fusepowered/ac/ae;->t:I

    if-nez v1, :cond_0

    .line 497
    sput-boolean v0, Lcom/fusepowered/ac/a;->W:Z

    .line 498
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v1}, Lcom/fusepowered/ac/ae;->f()V

    goto :goto_0

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v1, v1, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v1, v1, Lcom/fusepowered/ac/ae;->N:Z

    if-eqz v1, :cond_0

    .line 505
    sput-boolean v0, Lcom/fusepowered/ac/a;->W:Z

    .line 506
    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v1}, Lcom/fusepowered/ac/ae;->g()V

    goto :goto_0

    .line 511
    :cond_4
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 518
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    .line 427
    sput-boolean v6, Lcom/fusepowered/ac/ADCVideo;->i:Z

    .line 429
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->g:Z

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/fusepowered/ac/ADCVideo;->b:I

    .line 434
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 443
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v0, :cond_1

    .line 445
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/ac/ADCVideo;->s:J

    .line 449
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/fusepowered/ac/ADCVideo;->q:D

    iget-wide v2, p0, Lcom/fusepowered/ac/ADCVideo;->s:J

    iget-wide v4, p0, Lcom/fusepowered/ac/ADCVideo;->r:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/fusepowered/ac/ADCVideo;->q:D

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/fusepowered/ac/ADCVideo;->a:I

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->a()V

    .line 456
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0, v7}, Lcom/fusepowered/ac/e;->setBackgroundColor(I)V

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/ae;->z:Z

    .line 465
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iput-boolean v6, v0, Lcom/fusepowered/ac/ae;->H:Z

    .line 466
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iput-boolean v6, v0, Lcom/fusepowered/ac/ae;->G:Z

    .line 467
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iput-boolean v6, v0, Lcom/fusepowered/ac/ae;->I:Z

    .line 468
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iput v6, v0, Lcom/fusepowered/ac/ae;->u:I

    .line 469
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iput v6, v0, Lcom/fusepowered/ac/ae;->t:I

    .line 470
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->invalidate()V

    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 473
    return-void

    .line 439
    :cond_3
    sput v6, Lcom/fusepowered/ac/ADCVideo;->b:I

    goto :goto_0

    .line 460
    :cond_4
    sput v6, Lcom/fusepowered/ac/ADCVideo;->a:I

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x11

    .line 235
    sput-boolean v7, Lcom/fusepowered/ac/ADCVideo;->i:Z

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    invoke-static {}, Lcom/fusepowered/ac/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->finish()V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->b()Z

    .line 240
    iget-boolean v0, p0, Lcom/fusepowered/ac/ADCVideo;->B:Z

    if-eqz v0, :cond_6

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/ADCVideo;->B:Z

    .line 245
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-nez v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v0, v0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-object v1, v1, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v0, v0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    const/16 v1, 0x14

    iput v1, v0, Lcom/fusepowered/ac/ae;->m:I

    .line 250
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    const/16 v1, 0x19

    iput v1, v0, Lcom/fusepowered/ac/ae;->m:I

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/fusepowered/ac/ADCVideo;->x:I

    iget v4, p0, Lcom/fusepowered/ac/ADCVideo;->y:I

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget-boolean v0, v0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget v4, p0, Lcom/fusepowered/ac/ADCVideo;->u:I

    iget-object v5, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iget v5, v5, Lcom/fusepowered/ac/ae;->m:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget v4, p0, Lcom/fusepowered/ac/ADCVideo;->u:I

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :cond_6
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->g:Z

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->M:Lcom/fusepowered/ac/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->M:Lcom/fusepowered/ac/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 271
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/e;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 272
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/e;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 277
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "video_filepath"

    invoke-static {v1}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->N:Ljava/io/FileInputStream;

    .line 278
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo;->N:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/e;->a(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->j:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, v7}, Lcom/fusepowered/ac/ADCVideo;->onWindowFocusChanged(Z)V

    .line 292
    :cond_8
    sget-boolean v0, Lcom/fusepowered/ac/a;->O:Z

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->a()V

    .line 295
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->c()V

    .line 297
    :cond_9
    :goto_1
    return-void

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 267
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/ac/ADCVideo;->r:J

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to play video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video_filepath"

    invoke-static {v1}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/ac/a;->e(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/fusepowered/ac/ADCVideo;->finish()V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "has_focus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 351
    if-eqz p1, :cond_8

    .line 353
    sput-boolean v4, Lcom/fusepowered/ac/ADCVideo;->j:Z

    .line 354
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->i:Z

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_2

    .line 360
    sget v0, Lcom/fusepowered/ac/ADCVideo;->c:I

    if-eqz v0, :cond_0

    sget v0, Lcom/fusepowered/ac/ADCVideo;->c:I

    sput v0, Lcom/fusepowered/ac/ADCVideo;->a:I

    .line 361
    :cond_0
    sput v4, Lcom/fusepowered/ac/ADCVideo;->c:I

    .line 362
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    sget v1, Lcom/fusepowered/ac/ADCVideo;->a:I

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/e;->seekTo(I)V

    .line 365
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v0, :cond_3

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 368
    new-instance v1, Lcom/fusepowered/ac/ADCVideo$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/ADCVideo$1;-><init>(Lcom/fusepowered/ac/ADCVideo;)V

    .line 375
    iget-object v2, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/e;->setBackgroundColor(I)V

    .line 376
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    :goto_0
    sget-boolean v0, Lcom/fusepowered/ac/w;->G:Z

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    iput-boolean v4, v0, Lcom/fusepowered/ac/ae;->R:Z

    .line 386
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->start()V

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->requestFocus()Z

    .line 389
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->invalidate()V

    .line 420
    :cond_2
    :goto_1
    return-void

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/e;->setBackgroundColor(I)V

    goto :goto_0

    .line 392
    :cond_4
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->g:Z

    if-eqz v0, :cond_7

    .line 394
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    if-eqz v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    sget v1, Lcom/fusepowered/ac/ADCVideo;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 397
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->G:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_1

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 402
    :cond_6
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ADCVideo;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 405
    :cond_7
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->E:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->invalidate()V

    goto :goto_1

    .line 413
    :cond_8
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->i:Z

    if-eqz v0, :cond_9

    .line 415
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/fusepowered/ac/ADCVideo;->a:I

    .line 416
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->pause()V

    .line 418
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->j:Z

    goto :goto_1
.end method
