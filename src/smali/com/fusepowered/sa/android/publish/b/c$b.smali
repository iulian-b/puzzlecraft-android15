.class Lcom/fusepowered/sa/android/publish/b/c$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/b/c;


# direct methods
.method private constructor <init>(Lcom/fusepowered/sa/android/publish/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/sa/android/publish/b/c;Lcom/fusepowered/sa/android/publish/b/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/b/c$b;-><init>(Lcom/fusepowered/sa/android/publish/b/c;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/b/c;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/b/c;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:gClientInterface.setMode(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/b/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

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

    const-string v2, "index="

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "&"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/b/c;->c()[Z

    move-result-object v3

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-static {v2, p2}, Lcom/fusepowered/sa/android/publish/b/c;->a(Lcom/fusepowered/sa/android/publish/b/c;Ljava/lang/String;)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-static {v2, p2}, Lcom/fusepowered/sa/android/publish/b/c;->b(Lcom/fusepowered/sa/android/publish/b/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x6

    const-string v2, "Error while trying parsing index from url"

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/b/c;->c()[Z

    move-result-object v2

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-static {v0, p2}, Lcom/fusepowered/sa/android/publish/b/c;->a(Lcom/fusepowered/sa/android/publish/b/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/c$b;->a:Lcom/fusepowered/sa/android/publish/b/c;

    invoke-static {v0, p2}, Lcom/fusepowered/sa/android/publish/b/c;->b(Lcom/fusepowered/sa/android/publish/b/c;Ljava/lang/String;)V

    goto :goto_0
.end method
