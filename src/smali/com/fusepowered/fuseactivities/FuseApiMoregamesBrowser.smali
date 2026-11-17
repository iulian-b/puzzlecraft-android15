.class public Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;
.super Lcom/fusepowered/activities/FuseApiBrowser;
.source "FuseApiMoregamesBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static backPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->backPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fusepowered/activities/FuseApiBrowser;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super/range {p0 .. p1}, Lcom/fusepowered/activities/FuseApiBrowser;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 47
    .local v25, "url":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 48
    .local v15, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 51
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v22, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 56
    .local v14, "dm":Landroid/util/DisplayMetrics;
    const/high16 v5, 0x42820000    # 65.0f

    iget v6, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v16, v0

    .line 57
    .local v16, "height":I
    const/high16 v5, 0x42340000    # 45.0f

    iget v6, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v29, v0

    .line 59
    .local v29, "width":I
    const-string v5, "GAME CONFIGURATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is the density "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v23, "paramsBTN":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 66
    .local v24, "set":Landroid/view/animation/AnimationSet;
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 67
    .local v4, "animation":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 68
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 70
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "animation":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 75
    .restart local v4    # "animation":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 76
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 78
    new-instance v13, Landroid/view/animation/LayoutAnimationController;

    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, v24

    invoke-direct {v13, v0, v5}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 81
    .local v13, "controller":Landroid/view/animation/LayoutAnimationController;
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .local v19, "layout":Landroid/widget/FrameLayout;
    new-instance v28, Landroid/webkit/WebView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v28, "webView":Landroid/webkit/WebView;
    new-instance v5, Lcom/fusepowered/activities/FuseApiBrowser$Callback;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/fusepowered/activities/FuseApiBrowser$Callback;-><init>(Lcom/fusepowered/activities/FuseApiBrowser;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 86
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalFadingEdgeEnabled(Z)V

    .line 87
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 88
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 89
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v5, Landroid/webkit/WebChromeClient;

    invoke-direct {v5}, Landroid/webkit/WebChromeClient;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 93
    new-instance v26, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$1;-><init>(Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;)V

    .line 109
    .local v26, "webClient":Landroid/webkit/WebViewClient;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v27

    .line 112
    .local v27, "webSettings":Landroid/webkit/WebSettings;
    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 114
    new-instance v21, Lcom/fusepowered/fuseapi/NetworkService;

    invoke-direct/range {v21 .. v21}, Lcom/fusepowered/fuseapi/NetworkService;-><init>()V

    .line 115
    .local v21, "ns":Lcom/fusepowered/fuseapi/NetworkService;
    new-instance v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 116
    .local v17, "imageButton":Landroid/widget/ImageButton;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageButton;->bringToFront()V

    .line 118
    const-string v5, "RETURN"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 122
    .local v18, "imageUrl":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/fuseapi/NetworkService;->createImageButton(Ljava/lang/String;Landroid/widget/ImageButton;)V

    .line 124
    new-instance v5, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$2;-><init>(Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .local v20, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0}, Lcom/fusepowered/activities/FuseApiBrowser;->onPause()V

    .line 154
    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 155
    sget-boolean v0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->backPressed:Z

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->suspendSession()V

    .line 159
    :cond_0
    sput-boolean v1, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->backPressed:Z

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/fusepowered/activities/FuseApiBrowser;->onResume()V

    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->resumeSession(Landroid/app/Activity;Lcom/fusepowered/util/FuseCallback;)V

    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 169
    return-void
.end method
