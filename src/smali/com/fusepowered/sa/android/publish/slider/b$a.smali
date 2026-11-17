.class Lcom/fusepowered/sa/android/publish/slider/b$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/slider/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/slider/b;


# direct methods
.method private constructor <init>(Lcom/fusepowered/sa/android/publish/slider/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/sa/android/publish/slider/b;Lcom/fusepowered/sa/android/publish/slider/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/slider/b$a;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Slider"

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyWebViewClient::onPageFinished - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "Slider"

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyWebViewClient::onPageStarted - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->c(Lcom/fusepowered/sa/android/publish/slider/b;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "Slider"

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyWebViewClient::onReceivedError - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->i(Lcom/fusepowered/sa/android/publish/slider/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/b$a$1;

    invoke-direct {v1, p0, p4}, Lcom/fusepowered/sa/android/publish/slider/b$a$1;-><init>(Lcom/fusepowered/sa/android/publish/slider/b$a;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "Slider"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MyWebViewClient::shouldOverrideUrlLoading - ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->h(Lcom/fusepowered/sa/android/publish/slider/b;)Lcom/fusepowered/sa/android/publish/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v4

    const-string v0, "searchmobileonline"

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getAdClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-static {v0, p2, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method
