.class public Lcom/fusepowered/as/view/component/ASWebView;
.super Landroid/webkit/WebView;
.source "ASWebView.java"

# interfaces
.implements Lcom/fusepowered/as/view/View;


# static fields
.field protected static final BODY:Ljava/lang/String; = "<body style=\'margin:0;padding:0;position:relative;\'>"

.field private static final TAG:Ljava/lang/String; = "AS"


# instance fields
.field public final VIEW_ID:Ljava/lang/String;

.field private callCounter:I

.field private final monitor:Ljava/lang/Object;

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->VIEW_ID:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->monitor:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->callCounter:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 32
    invoke-direct {p0}, Lcom/fusepowered/as/view/component/ASWebView;->setup()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/view/component/ASWebView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->monitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/view/component/ASWebView;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->callCounter:I

    return v0
.end method

.method static synthetic access$108(Lcom/fusepowered/as/view/component/ASWebView;)I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->callCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fusepowered/as/view/component/ASWebView;->callCounter:I

    return v0
.end method

.method static synthetic access$110(Lcom/fusepowered/as/view/component/ASWebView;)I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->callCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fusepowered/as/view/component/ASWebView;->callCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/view/component/ASWebView;)Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method private setup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/fusepowered/as/view/ViewLocator;->getInstance()Lcom/fusepowered/as/view/ViewLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/view/component/ASWebView;->VIEW_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/fusepowered/as/view/ViewLocator;->registerView(Ljava/lang/String;Lcom/fusepowered/as/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/ASWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/fusepowered/as/view/component/ASWebView;->setVerticalScrollBarEnabled(Z)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/fusepowered/as/view/component/ASWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 81
    new-instance v0, Lcom/fusepowered/as/view/component/ASWebView$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/component/ASWebView$1;-><init>(Lcom/fusepowered/as/view/component/ASWebView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/ASWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/fusepowered/as/view/component/ASWebView;->setBackgroundColor(I)V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/ASWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 93
    :cond_0
    new-instance v0, Lcom/fusepowered/as/view/component/ASWebView$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/component/ASWebView$2;-><init>(Lcom/fusepowered/as/view/component/ASWebView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/ASWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 148
    return-void
.end method


# virtual methods
.method public loadData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fusepowered/as/view/component/ASWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Lcom/fusepowered/as/AerServConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/as/view/component/ASWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 49
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/as/view/component/ASWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p0, p2}, Lcom/fusepowered/as/view/component/ASWebView;->processData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 55
    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected processData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head></head><body style=\'margin:0;padding:0;position:relative;\'><center>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</center></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public registerProviderListener(Lcom/fusepowered/as/controller/listener/ProviderListener;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/as/view/component/ASWebView;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 37
    return-void
.end method
