.class public Lcom/fusepowered/sa/android/publish/b/c;
.super Lcom/fusepowered/sa/android/publish/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/b/c$a;,
        Lcom/fusepowered/sa/android/publish/b/c$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/webkit/WebView;

.field protected b:Lcom/fusepowered/sa/android/publish/adinformation/a;

.field protected c:Landroid/content/BroadcastReceiver;

.field protected d:Ljava/lang/Runnable;

.field private e:I

.field private f:Lcom/fusepowered/sa/android/publish/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/b/b;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->f:Lcom/fusepowered/sa/android/publish/b/c$a;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->b:Lcom/fusepowered/sa/android/publish/adinformation/a;

    new-instance v0, Lcom/fusepowered/sa/android/publish/b/c$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/b/c$1;-><init>(Lcom/fusepowered/sa/android/publish/b/c;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/fusepowered/sa/android/publish/b/c$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/b/c$2;-><init>(Lcom/fusepowered/sa/android/publish/b/c;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/b/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x1388

    new-instance v2, Lcom/fusepowered/sa/android/publish/b/c$4;

    invoke-direct {v2, p0}, Lcom/fusepowered/sa/android/publish/b/c$4;-><init>(Lcom/fusepowered/sa/android/publish/b/c;)V

    invoke-static {v0, p1, v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/b/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/b/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fusepowered.sa.android.OnClickCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private n()V
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->i()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/app/Activity;IZ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->e:I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.fusepowered.sa.android.CloseAdActivity"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/b/c;->n()V

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/b/c$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/b/c$3;-><init>(Lcom/fusepowered/sa/android/publish/b/c;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Landroid/widget/RelativeLayout;)V
    .locals 5

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->g()Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->h()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fusepowered/sa/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->b:Lcom/fusepowered/sa/android/publish/adinformation/a;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->b:Lcom/fusepowered/sa/android/publish/adinformation/a;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->e:I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fusepowered.sa.android.HideDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->m()V

    return-void
.end method

.method public k()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "StartApp Ad"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x57f00000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x777777

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/fusepowered/sa/android/publish/JsInterface;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/b/c;->d:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/fusepowered/sa/android/publish/b/c;->d:Ljava/lang/Runnable;

    invoke-direct {v2, v3, v4, v5}, Lcom/fusepowered/sa/android/publish/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string v3, "startappwall"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/b/c;->a(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/fusepowered/sa/android/publish/b/c$b;

    invoke-direct {v2, p0, v7}, Lcom/fusepowered/sa/android/publish/b/c$b;-><init>(Lcom/fusepowered/sa/android/publish/b/c;Lcom/fusepowered/sa/android/publish/b/c$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/b/c;->a(Landroid/widget/RelativeLayout;)V

    iput-object v7, p0, Lcom/fusepowered/sa/android/publish/b/c;->f:Lcom/fusepowered/sa/android/publish/b/c$a;

    return-void
.end method

.method public l()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->f:Lcom/fusepowered/sa/android/publish/b/c$a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->f:Lcom/fusepowered/sa/android/publish/b/c$a;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/b/c;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/fusepowered/sa/android/publish/b/c;->c:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/fusepowered/sa/android/publish/b/c;->f:Lcom/fusepowered/sa/android/publish/b/c$a;

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppWallActivity::onDestroy - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected m()V
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/b/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
