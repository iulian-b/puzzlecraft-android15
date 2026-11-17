.class public Lcom/fusepowered/nx/videoplayer/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"

# interfaces
.implements Lcom/fusepowered/nx/videoplayer/VideoDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;
    }
.end annotation


# instance fields
.field private mBufferingProgressBar:Landroid/widget/ProgressBar;

.field private mCountdownTimerTextView:Landroid/widget/TextView;

.field private mIsClientRequestedCloseInProgress:Z

.field private mIsMuted:Z

.field private mIsVideoShowing:Z

.field private mMutedImageView:Landroid/widget/ImageView;

.field private mNotMutedImageView:Landroid/widget/ImageView;

.field private mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

.field private mSkipCountdownTimerTextView:Landroid/widget/TextView;

.field private mSkipImageView:Landroid/widget/ImageView;

.field private final mSurfaceHolderListener:Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

.field private mVideoWidthHeightProportion:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsVideoShowing:Z

    .line 30
    new-instance v0, Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;Lcom/fusepowered/nx/videoplayer/VideoActivity$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceHolderListener:Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;

    .line 37
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsMuted:Z

    .line 38
    iput-boolean v2, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsClientRequestedCloseInProgress:Z

    .line 407
    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->toggleMute()V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/nx/videoplayer/VideoActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mBufferingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fusepowered/nx/videoplayer/VideoActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoWidthHeightProportion:F

    return p1
.end method

.method static synthetic access$602(Lcom/fusepowered/nx/videoplayer/VideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsVideoShowing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->resizeForCurrentScreenDimensions()V

    return-void
.end method

.method private resizeForCurrentScreenDimensions()V
    .locals 9

    .prologue
    .line 271
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 273
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 276
    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 277
    .local v1, "screenHeight":I
    int-to-float v7, v2

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 279
    .local v3, "screenWidthHeightProportion":F
    iget-boolean v7, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsVideoShowing:Z

    if-eqz v7, :cond_0

    .line 283
    iget v7, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoWidthHeightProportion:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_1

    .line 284
    move v6, v2

    .line 285
    .local v6, "viewWidth":I
    int-to-float v7, v2

    iget v8, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoWidthHeightProportion:F

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 291
    .local v5, "viewHeight":I
    :goto_0
    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 292
    .local v4, "videoLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    iget-object v7, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->requestLayout()V

    .line 298
    .end local v4    # "videoLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "viewHeight":I
    .end local v6    # "viewWidth":I
    :cond_0
    return-void

    .line 287
    :cond_1
    iget v7, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoWidthHeightProportion:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 288
    .restart local v6    # "viewWidth":I
    move v5, v1

    .restart local v5    # "viewHeight":I
    goto :goto_0
.end method

.method private setUpControlIconImageView(IILandroid/graphics/drawable/Drawable;ILandroid/widget/RelativeLayout;IFILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 13
    .param p1, "horizontalAlignment"    # I
    .param p2, "verticalAlignment"    # I
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "alpha"    # I
    .param p5, "parentRelativeLayout"    # Landroid/widget/RelativeLayout;
    .param p6, "marginPixels"    # I
    .param p7, "screenDensity"    # F
    .param p8, "controlIconMaxDimensionInDensityIndependentPixels"    # I
    .param p9, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 326
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 331
    .local v7, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 333
    .local v6, "iconWidthToHeightRatio":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v6, v11

    if-nez v11, :cond_0

    .line 334
    move/from16 v4, p8

    .local v4, "heightDp":I
    move/from16 v9, p8

    .line 343
    .local v9, "widthDp":I
    :goto_0
    int-to-float v11, v9

    mul-float v11, v11, p7

    float-to-int v10, v11

    .line 344
    .local v10, "widthPixels":I
    int-to-float v11, v4

    mul-float v11, v11, p7

    float-to-int v5, v11

    .line 346
    .local v5, "heightPixels":I
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v8, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, p6

    move/from16 v1, p6

    move/from16 v2, p6

    move/from16 v3, p6

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 348
    invoke-virtual {v8, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 349
    invoke-virtual {v8, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 350
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    move/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 353
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 354
    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 357
    return-object v7

    .line 335
    .end local v4    # "heightDp":I
    .end local v5    # "heightPixels":I
    .end local v8    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "widthDp":I
    .end local v10    # "widthPixels":I
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v6, v11

    if-lez v11, :cond_1

    .line 336
    move/from16 v9, p8

    .line 337
    .restart local v9    # "widthDp":I
    move/from16 v0, p8

    int-to-float v11, v0

    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v6

    mul-float/2addr v11, v12

    float-to-int v4, v11

    .restart local v4    # "heightDp":I
    goto :goto_0

    .line 339
    .end local v4    # "heightDp":I
    .end local v9    # "widthDp":I
    :cond_1
    move/from16 v0, p8

    int-to-float v11, v0

    mul-float/2addr v11, v6

    float-to-int v9, v11

    .line 340
    .restart local v9    # "widthDp":I
    move/from16 v4, p8

    .restart local v4    # "heightDp":I
    goto :goto_0
.end method

.method private toggleMute()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 303
    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsMuted:Z

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->unMute()V

    .line 305
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mMutedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mNotMutedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mMutedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 315
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mNotMutedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 317
    iget-boolean v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsMuted:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsMuted:Z

    .line 318
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->mute()V

    .line 310
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mMutedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mNotMutedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCountdownTimer(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "messageFormat"    # Ljava/lang/String;
    .param p3, "seconds"    # I

    .prologue
    .line 362
    new-instance v0, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/fusepowered/nx/videoplayer/VideoActivity$7;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;Landroid/widget/TextView;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsClientRequestedCloseInProgress:Z

    .line 188
    invoke-virtual {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->finish()V

    .line 191
    :cond_0
    return-void
.end method

.method public displaySecondsRemaining(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mCountdownTimerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageFormat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->updateCountdownTimer(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public displaySecondsRemainingUntilSkippable(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipCountdownTimerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->specialSkipCountdownMessageFormat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->updateCountdownTimer(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method public enableSkip(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 196
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 198
    .local v0, "desiredVisibility":I
    :goto_0
    new-instance v1, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity$4;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;I)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    return-void

    .line 196
    .end local v0    # "desiredVisibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public initializeVideo(F)V
    .locals 1
    .param p1, "videoWidthHeightProportion"    # F

    .prologue
    .line 240
    new-instance v0, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/nx/videoplayer/VideoActivity$6;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;F)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public isStuck(Z)V
    .locals 1
    .param p1, "isStuck"    # Z

    .prologue
    .line 215
    new-instance v0, Lcom/fusepowered/nx/videoplayer/VideoActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/nx/videoplayer/VideoActivity$5;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->finish()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->skipRequestedButNotAvailable()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    invoke-direct {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->resizeForCurrentScreenDimensions()V

    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->getInstance()Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    .line 46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->setVideoDisplayer(Lcom/fusepowered/nx/videoplayer/VideoDisplayer;)V

    .line 47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->getOptions()Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    if-nez v1, :cond_0

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->finish()V

    .line 164
    :goto_0
    return-void

    .line 55
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->orientation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->setRequestedOrientation(I)V

    .line 58
    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v6, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v13, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v13, "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/high16 v1, -0x1000000

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 66
    new-instance v1, Landroid/view/SurfaceView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 67
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v16, "surfaceViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .local v8, "screenDensity":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsDistanceFromScreenEdgeInDensityIndependentPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v7, v1

    .line 79
    .local v7, "marginPixels":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-boolean v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->allowMute:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->mutedButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-object v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->notMutedButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 81
    const/16 v2, 0xb

    const/16 v3, 0xc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-object v4, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->notMutedButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v5, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v9, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlIconMaxDimensionInDensityIndependentPixels:I

    new-instance v10, Lcom/fusepowered/nx/videoplayer/VideoActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity$1;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->setUpControlIconImageView(IILandroid/graphics/drawable/Drawable;ILandroid/widget/RelativeLayout;IFILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mNotMutedImageView:Landroid/widget/ImageView;

    .line 91
    const/16 v2, 0xb

    const/16 v3, 0xc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-object v4, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->mutedButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v5, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v9, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlIconMaxDimensionInDensityIndependentPixels:I

    new-instance v10, Lcom/fusepowered/nx/videoplayer/VideoActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity$2;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->setUpControlIconImageView(IILandroid/graphics/drawable/Drawable;ILandroid/widget/RelativeLayout;IFILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mMutedImageView:Landroid/widget/ImageView;

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mMutedImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-boolean v1, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->startMuted:Z

    if-eqz v1, :cond_1

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->toggleMute()V

    .line 108
    :cond_1
    const/16 v2, 0xb

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget-object v4, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->skipButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v5, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlsAlpha:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v9, v1, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->controlIconMaxDimensionInDensityIndependentPixels:I

    new-instance v10, Lcom/fusepowered/nx/videoplayer/VideoActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity$3;-><init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->setUpControlIconImageView(IILandroid/graphics/drawable/Drawable;ILandroid/widget/RelativeLayout;IFILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipImageView:Landroid/widget/ImageView;

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipCountdownTimerTextView:Landroid/widget/TextView;

    .line 121
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v14, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v14, "skipCountdownTimerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v14, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    const/16 v1, 0x9

    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    const/16 v1, 0xa

    invoke-virtual {v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipCountdownTimerTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipCountdownTimerTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v2, v2, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipCountdownTimerTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSkipCountdownTimerTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mCountdownTimerTextView:Landroid/widget/TextView;

    .line 134
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v12, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v12, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    const/16 v1, 0x9

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    const/16 v1, 0xa

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mCountdownTimerTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mCountdownTimerTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mOptions:Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;

    iget v2, v2, Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;->countdownMessageTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mCountdownTimerTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v1, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mBufferingProgressBar:Landroid/widget/ProgressBar;

    .line 146
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v11, "bufferingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mBufferingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v11}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mBufferingProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mBufferingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 154
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->requestWindowFeature(I)Z

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->setContentView(Landroid/view/View;)V

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->resizeForCurrentScreenDimensions()V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    .line 162
    .local v15, "surfaceHolder":Landroid/view/SurfaceHolder;
    const/4 v1, 0x3

    invoke-interface {v15, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mSurfaceHolderListener:Lcom/fusepowered/nx/videoplayer/VideoActivity$SurfaceHolderListener;

    invoke-interface {v15, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 258
    iget-boolean v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mIsClientRequestedCloseInProgress:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity;->mVideoPlayer:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;->activityFinishing(Lcom/fusepowered/nx/videoplayer/VideoDisplayer;)V

    .line 262
    invoke-virtual {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->finish()V

    .line 266
    :cond_0
    return-void
.end method
