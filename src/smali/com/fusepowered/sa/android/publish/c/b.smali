.class public abstract Lcom/fusepowered/sa/android/publish/c/b;
.super Lcom/fusepowered/sa/android/publish/c/d;


# instance fields
.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Z)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/fusepowered/sa/android/publish/c/d;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->i:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->k:Landroid/os/Handler;

    iput-boolean p6, p0, Lcom/fusepowered/sa/android/publish/c/b;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/c/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/a;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v7, p0, Lcom/fusepowered/sa/android/publish/c/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->e()I

    move-result v8

    invoke-static {v7, v3, v8}, Lcom/fusepowered/sa/android/publish/c/b;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-nez v6, :cond_0

    if-nez v7, :cond_1

    :cond_0
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    :cond_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_2

    const/4 v1, 0x3

    const-string v3, "in isAppPresent, skipAd is true"

    invoke-static {v1, v3}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/fusepowered/sa/android/publish/a;->b(Z)V

    iget v1, p0, Lcom/fusepowered/sa/android/publish/c/b;->i:I

    if-nez v1, :cond_5

    move v1, v4

    :goto_3
    if-eqz v1, :cond_6

    if-nez v6, :cond_6

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/b;->g:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/b;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&isShown="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->c()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&appPresence="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a;->d()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fusepowered/sa/android/publish/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    move v3, v2

    :goto_5
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/a;

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/a;->a(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/a;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "@tracking@"

    const-string v2, "@tracking@"

    invoke-static {p1, v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "@appPresencePackage@"

    const-string v3, "@appPresencePackage@"

    invoke-static {p1, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "@minAppVersion@"

    const-string v5, "@minAppVersion@"

    invoke-static {p1, v3, v5}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_2
    move v3, v4

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_6

    new-instance v8, Lcom/fusepowered/sa/android/publish/a;

    array-length v5, v0

    if-le v5, v3, :cond_3

    aget-object v5, v0, v3

    :goto_1
    aget-object v9, v1, v3

    iget v10, p0, Lcom/fusepowered/sa/android/publish/c/b;->i:I

    array-length v6, v2

    if-le v6, v3, :cond_4

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_2
    invoke-direct {v8, v5, v9, v10, v6}, Lcom/fusepowered/sa/android/publish/a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_3
    invoke-direct {v5, v6, v8, v9, v1}, Lcom/fusepowered/sa/android/publish/a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_6
    array-length v1, v0

    if-ge v3, v1, :cond_7

    new-instance v5, Lcom/fusepowered/sa/android/publish/a;

    aget-object v6, v0, v3

    const-string v8, ""

    iget v9, p0, Lcom/fusepowered/sa/android/publish/c/b;->i:I

    array-length v1, v2

    if-le v1, v3, :cond_5

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_7
    return-object v7
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/c/b;->e()Lcom/fusepowered/sa/android/publish/model/GetAdRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->g:Ljava/util/Set;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->g:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setPackagesExclude(Ljava/util/Set;)V

    iget v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->i:I

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/model/GetAdRequest;->setEngInclude(Z)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getAdInformationConfig()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;->e()Lcom/fusepowered/sa/android/publish/adinformation/e;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/c/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->a:Landroid/content/Context;

    sget-object v3, Lcom/fusepowered/sa/android/publish/b$a;->a:Lcom/fusepowered/sa/android/publish/b$a;

    invoke-static {v3}, Lcom/fusepowered/sa/android/publish/b;->a(Lcom/fusepowered/sa/android/publish/b$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/fusepowered/sa/android/publish/e/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/model/BaseRequest;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fusepowered/sa/android/publish/f/l; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    const-string v3, "Unable to handle GetHtmlAdService command!!!!"

    invoke-static {v2, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/f/l;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/fusepowered/sa/android/publish/c/d;->a(Ljava/lang/Boolean;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Html onPostExecute, result=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/c/b;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 6

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->j:Z

    if-eqz v0, :cond_1

    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/b$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/c/b$1;-><init>(Lcom/fusepowered/sa/android/publish/c/b;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v0, Lcom/fusepowered/sa/android/publish/a/d;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/d;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/fusepowered/sa/android/publish/c/b$2;

    invoke-direct {v2, p0, v1}, Lcom/fusepowered/sa/android/publish/c/b$2;-><init>(Lcom/fusepowered/sa/android/publish/c/b;Landroid/webkit/WebView;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Html onPostExecute failed error=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Handle Html Response"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->h:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Empty Ad"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->f:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/c/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/c/b;->a(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v0, Lcom/fusepowered/sa/android/publish/a/d;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/a/d;->setApps(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/c/b;->b()Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    check-cast v0, Lcom/fusepowered/sa/android/publish/a/d;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/a/d;->setHtml(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected b()Z
    .locals 3

    const/4 v0, 0x3

    const-string v1, "At least one package is present. sending another request to AdPlatform"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/c/b;->i:I

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/a;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/c/b;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/c/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/a;->a()V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/c/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
