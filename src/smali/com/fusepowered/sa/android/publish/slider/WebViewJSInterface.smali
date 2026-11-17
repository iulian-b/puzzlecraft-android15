.class public Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private trackingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method private megreTackingUrls(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v7, :cond_1

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->trackingUrl:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    const-string v5, "tracking/adImpression"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tracking/adImpression"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tracking/adImpression[?]d="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.startappexchange.com/tracking/adImpression?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->trackingUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getTrackingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->trackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public processHTML(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "@tracking@"

    const-string v1, "@tracking@"

    invoke-direct {p0, p1, v0, v1}, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->megreTackingUrls(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->trackingUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->mContext:Landroid/content/Context;

    const-string v1, "trackingUrl"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->trackingUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processServerEvent(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->mContext:Landroid/content/Context;

    const-string v1, "slideEvent"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->mContext:Landroid/content/Context;

    const-string v1, "trackingEvent"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@tracking@"

    const-string v1, "@tracking@"

    invoke-direct {p0, p1, v0, v1}, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->megreTackingUrls(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->trackingUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->mContext:Landroid/content/Context;

    const-string v1, "trackingUrl"

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->trackingUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/a;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/slider/a;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/slider/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
