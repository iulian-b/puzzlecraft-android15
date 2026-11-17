.class public Lcom/apptracker/android/module/AppModuleController;
.super Lcom/apptracker/android/module/AppModuleControllerBase;
.source "u"


# static fields
.field private static synthetic A:I = 0x0

.field private static synthetic B:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic C:I = 0x0

.field private static synthetic D:Z = false

.field private static synthetic E:Z = false

.field static final F:I = 0x2711

.field private static synthetic G:Z

.field private static synthetic J:I

.field private static synthetic K:Z

.field private static synthetic L:I

.field private static synthetic M:Ljava/lang/String;

.field private static synthetic T:F

.field protected static a:Landroid/content/Context;

.field private static synthetic b:I

.field private static synthetic c:Ljava/lang/String;

.field private static synthetic d:Landroid/widget/RelativeLayout;

.field private static synthetic e:Lcom/apptracker/android/advert/AppWebView;

.field private static synthetic f:I

.field private static synthetic g:Z

.field private static synthetic i:I

.field private static synthetic j:Landroid/view/ViewGroup;

.field private static synthetic k:Landroid/view/View;

.field private static synthetic l:Z

.field private static synthetic v:Z


# instance fields
.field private synthetic H:Z

.field private synthetic I:Lcom/apptracker/android/listener/AppModuleLoaderListener;

.field private synthetic h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    .line 70
    sput-boolean v1, Lcom/apptracker/android/module/AppModuleController;->D:Z

    .line 98
    sput-boolean v1, Lcom/apptracker/android/module/AppModuleController;->E:Z

    .line 138
    sput-boolean v1, Lcom/apptracker/android/module/AppModuleController;->G:Z

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleController;->g:Z

    .line 63
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/apptracker/android/module/AppModuleController;->T:F

    .line 59
    sput-boolean v1, Lcom/apptracker/android/module/AppModuleController;->l:Z

    .line 145
    sput-boolean v1, Lcom/apptracker/android/module/AppModuleController;->K:Z

    .line 159
    sput-boolean v1, Lcom/apptracker/android/module/AppModuleController;->v:Z

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->c:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleLoaderListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/apptracker/android/listener/AppModuleLoaderListener;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/apptracker/android/module/AppModuleControllerBase;-><init>()V

    .line 5
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->H:Z

    .line 188
    sput-object p1, Lcom/apptracker/android/module/AppModuleController;->a:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/apptracker/android/module/AppModuleController;->I:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    .line 39
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic B(Landroid/view/View;)V
    .locals 0
    .param p0, "arg0"    # Landroid/view/View;

    .prologue
    .line 1072
    invoke-static {p0}, Lcom/apptracker/android/module/AppModuleController;->G(Landroid/view/View;)V

    return-void
.end method

.method static synthetic G()Lcom/apptracker/android/advert/AppWebView;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    return-object v0
.end method

.method private static synthetic G(Landroid/view/View;)V
    .locals 4
    .param p0, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1459
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 759
    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v1}, Lcom/apptracker/android/advert/AppWebView;->destroy()V

    .line 1060
    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    .line 720
    invoke-static {}, Lcom/apptracker/android/module/AppModuleController;->k()V

    .line 1473
    :try_start_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1045
    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1383
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u001e\u0018)\u0005)J,\u0002>\u0004{\u001e)\u00132\u0004<J/\u0005{\u0018>\u00074\u001c>J7\u000b\"\u0005.\u001e{G{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private synthetic G(Ljava/lang/String;)V
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 203
    if-nez p1, :cond_0

    .line 206
    const-string v0, "APTr"

    const-string v1, "G0\t7]2E\u007fJ0G+L1]\u007f@1\t;@,Y3H&d0M*E:"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "APTr"

    iget-object v2, p0, Lcom/apptracker/android/module/AppModuleController;->I:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleDisplayed(Z)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u000e2\u0019+\u0006:\u0013\u0016\u0005?\u001f7\u000fa\u000e2\u0019+\u0006:\u00132\u0004<P{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setLoadingURL(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    const-string v2, "+L\']pA+D3"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "\u000e>\u001dGc"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/apptracker/android/advert/AppWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/apptracker/android/module/AppModuleController;->m()V

    goto :goto_0
.end method

.method private synthetic L()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 553
    :try_start_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setLoadingURL(Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    :goto_0
    const-string v0, "APTr"

    const-string v1, "J3F,L\nG3F<B:[\u007fJ>E3L;"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleController;->K:Z

    .line 439
    sput-boolean v2, Lcom/apptracker/android/module/AppModuleController;->l:Z

    .line 411
    sput-boolean v2, Lcom/apptracker/android/module/AppModuleController;->v:Z

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    new-instance v1, Lcom/apptracker/android/module/AppModuleController$3;

    invoke-direct {v1, p0}, Lcom/apptracker/android/module/AppModuleController$3;-><init>(Lcom/apptracker/android/module/AppModuleController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    :goto_1
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 492
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ")7\u0005(\u000f\u000e\u00047\u00058\u0001>\u0018{\u000f)\u00184\u0018{G{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 572
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static synthetic k()V
    .locals 4

    .prologue
    .line 669
    const-string v0, "APTr"

    const-string v1, "\rL2F)@1N\u007fd\u001ez\u0014"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :try_start_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1283
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u001e\u0018)\u0005)J,\u0002>\u0004{\u001e)\u00132\u0004<J/\u0005{\u0018>\u00074\u001c>J6\u000b(\u0001{G{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private synthetic m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 284
    const-string v0, "APTr"

    const-string v1, "\u0007q\u0007q\u0007q\u0007q\u0007q\u0007\u007f@1\t;@,Y3H&h;"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 317
    const-string v0, "APTr"

    const-string v1, "7\u000b\"\u0005.\u001e{\u0003(J5\u001f7\u0006{"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",J-L:G\u007f^6M+A\u007f\u000f\u007fA:@8A+\u0013\u007f"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/apptracker/android/module/AppModuleController;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/apptracker/android/module/AppModuleController;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :try_start_0
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleController;->g:Z

    if-eqz v0, :cond_1

    .line 491
    const-string v0, "APTr"

    const-string v1, "@,o*E3z<[:L1\t,F\u007fH;M\u007f]7L\u007fD>Z4"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    .line 388
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 581
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 528
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 584
    sget v0, Lcom/apptracker/android/module/AppModuleController;->T:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 552
    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 268
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    new-instance v1, Lcom/apptracker/android/module/AppModuleController$2;

    invoke-direct {v1, p0}, Lcom/apptracker/android/module/AppModuleController$2;-><init>(Lcom/apptracker/android/module/AppModuleController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/apptracker/android/module/AppModuleController;->C:I

    sget v2, Lcom/apptracker/android/module/AppModuleController;->i:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 405
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 500
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    const-string v0, "APTr"

    const-string v1, "\u0016+\u0008!{\u0003(J:\u000e?\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_1
    :goto_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v0, :cond_2

    .line 424
    const-string v0, "APTr"

    const-string v1, "\u0018F6G8\t+F\u007fH;M\u007f^:K)@:^\u007f]0\t3H&F*]\u007fG0^q\u0007q"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->j:Landroid/view/ViewGroup;

    .line 511
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->j:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 444
    const-string v0, "APTr"

    const-string v1, "\u001d>\u0008-\u0003>\u001d|\u0019{\u001a:\u0018>\u0004/J2\u0019{\u0004.\u00067"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/apptracker/android/module/AppModuleController;->f:I

    sget v2, Lcom/apptracker/android/module/AppModuleController;->b:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 328
    sget v1, Lcom/apptracker/android/module/AppModuleController;->J:I

    sget v2, Lcom/apptracker/android/module/AppModuleController;->L:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 371
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 285
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    const-string v0, "APTr"

    const-string v1, "\u001bf\u0011l~"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v4}, Lcom/apptracker/android/advert/AppWebView;->setBackgroundColor(I)V

    .line 374
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->requestFocus()Z

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppModuleController;->updateLayout(I)V

    .line 533
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 489
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 386
    :try_start_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 524
    :goto_2
    const-string v0, "APTr"

    const-string v1, "\u001a\u00067J?\u00055\u000f{\u00035J?\u0003(\u001a7\u000b\"+?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 494
    const-string v1, "APTr"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    :cond_3
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->j:Landroid/view/ViewGroup;

    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 278
    :catch_1
    move-exception v0

    .line 586
    const-string v0, "APTr"

    const-string v2, ":)\u00059\u0006>\u0007{\u000b?\u000e2\u0004<J7\u000b\"\u0005.\u001e{\u001e4J8\u00055\u001e>\u0004/\u001c2\u000f,"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :try_start_2
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 419
    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 508
    :goto_3
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 372
    :catch_2
    move-exception v0

    .line 315
    const-string v2, "APTr"

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 597
    const-string v2, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0016Z,\\:\t>]+H<A6G8\t3H&F*]\u007f]0\t>J+@)@+P\u007f\u0004\u007f"

    invoke-static {v4}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method B()Z
    .locals 4

    .prologue
    .line 364
    :try_start_0
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ";L3L+L\u0012F;\\3L\u0013F<H3j>J7Le"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/apptracker/android/module/AppModuleCache;->getAdFileName(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 319
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u000e>\u0006>\u001e>J:\u000ea"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleCache;->deleteFilesByTimeStampOfAdFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 519
    :goto_0
    return v0

    .line 548
    :catch_0
    move-exception v0

    .line 523
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 519
    const/4 v0, 0x0

    goto :goto_0
.end method

.method G(Ljava/lang/String;Lcom/apptracker/android/module/AppAd;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    .line 314
    invoke-virtual {p2}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/apptracker/android/module/AppModuleCache;->getAdFileName(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 416
    invoke-static {v0, p2}, Lcom/apptracker/android/module/AppModuleCache;->B(Ljava/io/File;Lcom/apptracker/android/module/AppAd;)Z

    move-result v0

    return v0
.end method

.method public controlMedia(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1326
    return-void
.end method

.method public destroyAd(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 493
    const-string v0, "APTr"

    const-string v1, "M:Z+[0P\u001eM\u007fJ>E3L;"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleController;->K:Z

    .line 282
    invoke-direct {p0}, Lcom/apptracker/android/module/AppModuleController;->L()V

    .line 378
    invoke-virtual {p0}, Lcom/apptracker/android/module/AppModuleController;->B()Z

    .line 365
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->I:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleDisplayed(Z)V

    .line 447
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 564
    :cond_0
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->f:Z

    if-eqz v0, :cond_1

    .line 525
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/apptracker/android/module/AppModuleController;->onClosed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    .line 468
    :cond_1
    return-void
.end method

.method public destroyModule()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->H:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->H:Z

    .line 120
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppModuleController;->onCloseClick(Landroid/webkit/WebView;)V

    .line 110
    :cond_0
    return-void
.end method

.method public displayModuleInCurrentActivity(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/app/Activity;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 214
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->g:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/apptracker/android/advert/AppWebView;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/apptracker/android/advert/AppWebView;-><init>(Landroid/app/Activity;Lcom/apptracker/android/listener/AppModuleControllerListener;)V

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    .line 76
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    new-instance v1, Lcom/apptracker/android/module/AppModuleController$1;

    invoke-direct {v1, p0}, Lcom/apptracker/android/module/AppModuleController$1;-><init>(Lcom/apptracker/android/module/AppModuleController;)V

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 179
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 178
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/apptracker/android/module/AppModuleController;->i:I

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/apptracker/android/module/AppModuleController;->C:I

    .line 131
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getHeight()I

    move-result v0

    sput v0, Lcom/apptracker/android/module/AppModuleController;->b:I

    .line 62
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getWidth()I

    move-result v0

    sput v0, Lcom/apptracker/android/module/AppModuleController;->f:I

    .line 132
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getOrientation()I

    move-result v0

    sput v0, Lcom/apptracker/android/module/AppModuleController;->A:I

    .line 575
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getPositionX()I

    move-result v0

    sput v0, Lcom/apptracker/android/module/AppModuleController;->J:I

    .line 414
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getPositionY()I

    move-result v0

    sput v0, Lcom/apptracker/android/module/AppModuleController;->L:I

    .line 532
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isShouldClickTrack()Z

    move-result v0

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleController;->D:Z

    .line 558
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isRealTimeCloseTracking()Z

    move-result v0

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleController;->G:Z

    .line 487
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isRealTimeClickTracking()Z

    move-result v0

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleController;->E:Z

    .line 534
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getCloseTrackingUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->M:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isFullScreen()Z

    move-result v0

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleController;->g:Z

    .line 530
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getMaskAlpha()F

    move-result v0

    sput v0, Lcom/apptracker/android/module/AppModuleController;->T:F

    .line 425
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getClickTrackUrls()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->B:Ljava/util/HashMap;

    .line 313
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->getHtml()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptracker/android/module/AppModuleController;->c:Ljava/lang/String;

    .line 594
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apptracker/android/module/AppModuleController;->G(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public getAdDestroyed()Z
    .locals 1

    .prologue
    .line 666
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleController;->K:Z

    return v0
.end method

.method public getAdLoaded()Z
    .locals 1

    .prologue
    .line 951
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleController;->l:Z

    return v0
.end method

.method public getOnAdLoaded()Z
    .locals 1

    .prologue
    .line 1078
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleController;->v:Z

    return v0
.end method

.method public hideElements(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 324
    :try_start_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setVisibility(I)V

    .line 563
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isDisplayOnComplete()Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppAd;->isDisplayOnComplete()Z

    move-result v0

    return v0
.end method

.method public isModuleLoaded()Z
    .locals 1

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->f:Z

    return v0
.end method

.method public loadingModule(Landroid/content/Context;Ljava/lang/String;Lcom/apptracker/android/module/AppAd;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    const/4 v2, 0x0

    .line 192
    iput-boolean v2, p0, Lcom/apptracker/android/module/AppModuleController;->m:Z

    .line 230
    iput-boolean v2, p0, Lcom/apptracker/android/module/AppModuleController;->f:Z

    .line 151
    iput-boolean v2, p0, Lcom/apptracker/android/module/AppModuleController;->e:Z

    .line 247
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->H:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "APTr"

    const-string v1, "\u00064\u000b?\u00035\r\u0016\u0005?\u001f7\u000f{\u0003(\'4\u000e.\u0006>.>\u0019/\u00184\u0013\t\u000f*\u001f>\u0019/\u000f?W/\u0018.\u000f{\u00194J1\u001f(\u001e{\u0018>\u001e.\u00185"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    iput-object p3, p0, Lcom/apptracker/android/module/AppModuleController;->d:Lcom/apptracker/android/module/AppAd;

    .line 20
    iget-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->k:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->I:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const-string v1, ""

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppModuleController;->k:Z

    invoke-interface {v0, v1, v2}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 162
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    invoke-static {v0, p2}, Lcom/apptracker/android/module/AppModuleController;->onCached(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 195
    :cond_1
    iput-boolean v2, p0, Lcom/apptracker/android/module/AppModuleController;->h:Z

    .line 215
    sput-object p1, Lcom/apptracker/android/module/AppModuleController;->a:Landroid/content/Context;

    .line 23
    sput-object p2, Lcom/apptracker/android/module/AppModuleController;->A:Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-static {p1, p0, p3}, Lcom/apptracker/android/module/AppModuleActivity;->startActivity(Landroid/content/Context;Lcom/apptracker/android/module/AppModuleController;Lcom/apptracker/android/module/AppAd;)Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 49
    const-string v0, "\u001eJ+@)@+P\u007fJ0DqH/Y+[>J4L-\u0007>G;[0@;\u00072F;\\3Lqh/Y\u0012F;\\3L\u001eJ+@)@+P\u007fG0]\u007fO0\\1Mq\t\u0017H)L\u007fP0\\\u007fM:J3H-L;\t6]\u007f@1\t&F*[\u007fh1M-F6M\u0012H1@9L,]qQ2E`"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAppModuleLoaded(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 1539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleController;->f:Z

    .line 1536
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->I:Lcom/apptracker/android/listener/AppModuleLoaderListener;

    const-string v1, ""

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppModuleController;->k:Z

    invoke-interface {v0, v1, v2}, Lcom/apptracker/android/listener/AppModuleLoaderListener;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 1125
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppModuleController;->onLoaded(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public onCloseClick(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 353
    const-string v0, "APTr"

    const-string v1, "\u0016\u0005?\u001f7\u000f\u0018\u00055\u001e)\u00057\u0006>\u0018|\u0019{\u00055)7\u0005(\u000f\u0018\u00062\t0"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleController;->D:Z

    if-eqz v0, :cond_1

    .line 342
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 458
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "]-H<B6G8\t0G\u001cE0Z:j3@<B\u007f^6]7\u0013\u007f"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->a:Landroid/content/Context;

    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->M:Ljava/lang/String;

    sget-boolean v2, Lcom/apptracker/android/module/AppModuleController;->G:Z

    invoke-static {v0, v1, v2}, Lcom/apptracker/android/module/AppModuleController;->trackClick(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 593
    :cond_0
    :goto_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {p0, v0}, Lcom/apptracker/android/module/AppModuleController;->destroyAd(Landroid/webkit/WebView;)V

    .line 360
    return-void

    .line 481
    :cond_1
    const-string v0, "APTr"

    const-string v1, "\u0015\u0005/J/\u0018:\t0\u00035\r{\t7\u0005(\u000f\u0018\u00062\t0"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1482
    return-void
.end method

.method public onLinkClick(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "7\u00035\u0001\u0018\u00062\t0\u000f?J8\u000b7\u0006>\u000e{\u001d2\u001e3J3\u0013+\u000f)\u00062\u00040P{"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/apptracker/android/module/AppModuleController;->onClicked(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleController;->D:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->B:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 488
    const-string v0, "APTr"

    const-string v1, "]-H<B6G8\t9E>N\u007f@,\t\u000b{\nl\u007f"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    if-nez v0, :cond_2

    .line 456
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->B:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    if-eqz v0, :cond_1

    .line 569
    const-string v1, "APTr"

    const-string v2, ",4\u001f5\u000e{\u000b{\u000e>\u000c:\u001f7\u001e{\u001e)\u000b8\u0001\u000e\u00187"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->a:Landroid/content/Context;

    sget-boolean v2, Lcom/apptracker/android/module/AppModuleController;->E:Z

    invoke-static {v1, v0, v2}, Lcom/apptracker/android/module/AppModuleController;->trackClick(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0019F*G;\t2H+J7@1N\u007fE>G;@1N\u007fE6G4\u0013\u007f"

    invoke-static {v3}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->a:Landroid/content/Context;

    sget-boolean v2, Lcom/apptracker/android/module/AppModuleController;->E:Z

    invoke-static {v1, v0, v2}, Lcom/apptracker/android/module/AppModuleController;->trackClick(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 507
    :cond_3
    const-string v0, "APTr"

    const-string v1, "\u0015\u0005/J/\u0018:\t0\u00035\r{\u001e3\u000f{\u00062\u00040J8\u00062\t0"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdDestroyed(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 627
    sput-boolean p1, Lcom/apptracker/android/module/AppModuleController;->K:Z

    .line 1230
    return-void
.end method

.method public setAdLoaded(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 1557
    sput-boolean p1, Lcom/apptracker/android/module/AppModuleController;->l:Z

    .line 663
    return-void
.end method

.method public setLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 29
    sput-object p1, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    .line 174
    return-void
.end method

.method public setListener(Lcom/apptracker/android/listener/AppModuleListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;

    .prologue
    .line 77
    sput-object p1, Lcom/apptracker/android/module/AppModuleController;->G:Lcom/apptracker/android/listener/AppModuleListener;

    .line 54
    return-void
.end method

.method public setLoading(Landroid/webkit/WebView;Z)V
    .locals 0

    .prologue
    .line 1593
    return-void
.end method

.method public showElements(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "arg0"    # Landroid/webkit/WebView;

    .prologue
    .line 937
    :try_start_0
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleController;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1304
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    :cond_0
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setVisibility(I)V

    .line 854
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->requestFocus()Z

    .line 1399
    sget-object v0, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-void

    .line 1006
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateLayout(I)V
    .locals 6
    .param p1, "arg0"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 542
    const-string v0, "APTr"

    const-string v1, "*Y;H+L\u0013H&F*]\u007fJ>E3L;"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleController;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->getScreenWidthHeight(Landroid/content/Context;)[I

    move-result-object v0

    .line 286
    aget v1, v0, v5

    .line 568
    aget v0, v0, v3

    .line 398
    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    if-eqz v2, :cond_2

    .line 461
    sget v2, Lcom/apptracker/android/module/AppModuleController;->A:I

    if-nez v2, :cond_0

    if-ne p1, v3, :cond_0

    sget v2, Lcom/apptracker/android/module/AppModuleController;->f:I

    sget v3, Lcom/apptracker/android/module/AppModuleController;->b:I

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    sget v2, Lcom/apptracker/android/module/AppModuleController;->f:I

    sget v3, Lcom/apptracker/android/module/AppModuleController;->b:I

    if-ge v2, v3, :cond_4

    .line 297
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v3, Lcom/apptracker/android/module/AppModuleController;->b:I

    sget v4, Lcom/apptracker/android/module/AppModuleController;->f:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 311
    sget v3, Lcom/apptracker/android/module/AppModuleController;->b:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/apptracker/android/module/AppModuleController;->f:I

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 305
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 287
    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/apptracker/android/module/AppModuleController;->g:Z

    if-eqz v2, :cond_3

    .line 296
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 316
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 545
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 531
    sget-object v1, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->k:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    :cond_3
    return-void

    .line 499
    :cond_4
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v3, Lcom/apptracker/android/module/AppModuleController;->f:I

    sget v4, Lcom/apptracker/android/module/AppModuleController;->b:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 591
    sget v3, Lcom/apptracker/android/module/AppModuleController;->f:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/apptracker/android/module/AppModuleController;->b:I

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 290
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 291
    sget-object v2, Lcom/apptracker/android/module/AppModuleController;->d:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/apptracker/android/module/AppModuleController;->e:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
