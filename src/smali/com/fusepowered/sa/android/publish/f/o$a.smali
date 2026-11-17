.class Lcom/fusepowered/sa/android/publish/f/o$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/f/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Landroid/app/ProgressDialog;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->b:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->c:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->g:Z

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->h:Landroid/content/Context;

    iput p2, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->d:I

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->e:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/f/o$a;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->d:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/sa/android/publish/f/o$a$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/f/o$a$1;-><init>(Lcom/fusepowered/sa/android/publish/f/o$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/f/o$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/f/o$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/f/o$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/fusepowered/sa/android/publish/f/o$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/fusepowered/sa/android/publish/f/o$a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->f:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyWebViewClient::onPageFinished - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyWebViewClient::onPageStarted - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/f/o$a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->c:Z

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyWebViewClient::onReceivedError - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyWebViewClient::shouldOverrideUrlLoading - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    :try_start_0
    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "market"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://play.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://play.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->g:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->b:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->h:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/o$a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x6

    const-string v2, "StartAppWall.UtilExcpetion - view to attached to window - Load Progress"

    invoke-static {v0, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_2
.end method
