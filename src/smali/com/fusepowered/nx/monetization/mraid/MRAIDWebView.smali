.class public Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
.super Landroid/webkit/WebView;
.source "MRAIDWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;
    }
.end annotation


# static fields
.field static final MODAL_BACKGROUND:I

.field private static final dumpHtmlToSDCard:Z

.field public static forceHardware:Ljava/lang/Boolean;

.field private static mraidController:Ljava/lang/String;

.field private static final sdCardFileName:Ljava/lang/String;

.field private static sizeScript:Ljava/lang/String;


# instance fields
.field private adIsMRAID:Z

.field private adLoaded:Z

.field private adReleased:Z

.field private callsHandled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

.field private downloadedData:Ljava/lang/StringBuilder;

.field private initialLayerType:I

.field private mraidLoaded:Z

.field private schemeHandler:Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 85
    const/16 v0, 0x80

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    .line 94
    sput-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sdCardFileName:Ljava/lang/String;

    .line 156
    sput-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 88
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adReleased:Z

    .line 89
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 90
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 110
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->init()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 88
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adReleased:Z

    .line 89
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 90
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 105
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->init()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 88
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adReleased:Z

    .line 89
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 90
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 100
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->init()V

    .line 101
    return-void
.end method

.method static synthetic access$1000(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->schemeHandler:Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->callsHandled:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    return v0
.end method

.method static synthetic access$600(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adReleased:Z

    return v0
.end method

.method static synthetic access$700(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdFailed()V

    return-void
.end method

.method static synthetic access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->handleLoadAdFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdData(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private copyHtmlToSDCard(Ljava/lang/String;)V
    .locals 9
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/nativex/mraid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, "nativexSubDirectory":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 767
    .local v4, "subDirectoryFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 768
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 771
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/nativex/mraid/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 773
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getContainer()Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getAdName()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "destinationFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 777
    .local v1, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 784
    if-eqz v2, :cond_1

    .line 785
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 792
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    :cond_2
    :goto_0
    return-void

    .line 787
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 790
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_0

    .line 780
    :catch_1
    move-exception v5

    .line 784
    :goto_1
    if-eqz v1, :cond_2

    .line 785
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 787
    :catch_2
    move-exception v5

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v5

    .line 784
    :goto_2
    if-eqz v1, :cond_3

    .line 785
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 789
    :cond_3
    :goto_3
    throw v5

    .line 787
    :catch_3
    move-exception v6

    goto :goto_3

    .line 783
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .line 780
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private handleLoadAdFailure(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading ad failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdFailed()V

    .line 573
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while downloading the ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private init()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 117
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 119
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 121
    const-string v1, "Apache-HttpClient/UNAVAILABLE (java 1.4)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 123
    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setVideoAutoPlayEnabled(Landroid/webkit/WebSettings;)V

    .line 126
    :cond_0
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;

    invoke-direct {v1, p0, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setScrollBarStyle(I)V

    .line 129
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getInitialLayerType()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->initialLayerType:I

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->callsHandled:Ljava/util/List;

    .line 132
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->makeTransparent()V

    .line 133
    return-void
.end method

.method private loadAdData(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/StringBuilder;

    .prologue
    .line 610
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidController:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadMraidController()V

    .line 613
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadSizeScript()V

    .line 616
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/StringBuilder;

    .line 617
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->sendLoadDataMessage(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V

    .line 618
    return-void
.end method

.method private loadAdFailed()V
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isSecondPartWebView(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 580
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->close()V

    .line 581
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    const-string v1, "Expand failed."

    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 588
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->release()V

    goto :goto_0
.end method

.method private loadAdInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "responseData"    # Ljava/lang/String;

    .prologue
    .line 752
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 753
    .local v1, "responseJSON":Lorg/json/JSONObject;
    const-string v2, "AdInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    const-string v2, "AdInfo"

    .line 755
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;-><init>(Ljava/lang/String;)V

    .line 756
    .local v0, "adInfo":Lcom/fusepowered/nx/monetization/mraid/AdInfo;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getAdName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->setPlacement(Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v2, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setAdInfo(Lcom/fusepowered/nx/monetization/mraid/AdInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v0    # "adInfo":Lcom/fusepowered/nx/monetization/mraid/AdInfo;
    .end local v1    # "responseJSON":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadMraidController()V
    .locals 4

    .prologue
    .line 592
    :try_start_0
    const-string v2, "d2luZG93Lm1yYWlkSW5pdCA9IGZ1bmN0aW9uICgpIHsNCiAgICB2YXIgbXJhaWQgPSB3aW5kb3cubXJhaWQgPSB7fTsNCiAgICB2YXIgbmF0aXZleCA9IHdpbmRvdy5uYXRpdmV4ID0ge307DQoNCiAgICAvLyAjcmVnaW9uIENvbnN0YW50cw0KICAgIHZhciBFVkVOVFMgPSBtcmFpZC5FVkVOVFMgPSB7DQogICAgICAgIFJFQURZOiAicmVhZHkiLA0KICAgICAgICBFUlJPUjogImVycm9yIiwNCiAgICAgICAgU1RBVEVfQ0hBTkdFOiAic3RhdGVDaGFuZ2UiLA0KICAgICAgICBWSUVXQUJMRV9DSEFOR0U6ICJ2aWV3YWJsZUNoYW5nZSIsDQogICAgICAgIFNJWkVfQ0hBTkdFOiAic2l6ZUNoYW5nZSIgLy8gTVJBSUQgMi4wDQogICAgfTsNCg0KICAgIHZhciBTVEFURVMgPSBtcmFpZC5TVEFURVMgPSB7DQogICAgICAgIExPQURJTkc6ICJsb2FkaW5nIiwNCiAgICAgICAgREVGQVVMVDogImRlZmF1bHQiLA0KICAgICAgICBFWFBBTkRFRDogImV4cGFuZGVkIiwNCiAgICAgICAgUkVTSVpFRDogInJlc2l6ZWQiLA0KICAgICAgICBISURERU46ICJoaWRkZW4iDQogICAgfTsNCg0KICAgIHZhciBGRUFUVVJFUyA9IG1yYWlkLkZFQVRVUkVTID0gew0KICAgICAgICBTTVM6ICJzbXMiLA0KICAgICAgICBURUw6ICJ0ZWwiLA0KICAgICAgICBDQUxFTkRBUjogImNhbGVuZGFyIiwNCiAgICAgICAgU1RPUkVfUElDVFVSRTogInN0b3JlUGljdHVyZSIsDQogICAgICAgIElOTElORV9WSURFTzogImlubGluZVZpZGVvIg0KICAgIH07DQoNCiAgICB2YXIgUExBQ0VNRU5UX1RZUEVTID0gbXJhaWQuUExBQ0VNRU5UX1RZUEVTID0gew0KICAgICAgICBJTkxJTkU6ICJpbmxpbmUiLA0KICAgICAgICBJTlRFUlNUSVRJQUw6ICJpbnRlcnN0aXRpYWwiDQogICAgfTsNCg0KICAgIHZhciBDVVNUT01fQ0xPU0VfUE9TSVRJT04gPSBtcmFpZC5DVVNUT01fQ0xPU0VfUE9TSVRJT04gPSB7DQogICAgICAgIFRPUF9MRUZUOiAidG9wLWxlZnQiLA0KICAgICAgICBUT1BfUklHSFQ6ICJ0b3AtcmlnaHQiLA0KICAgICAgICBDRU5URVI6ICJjZW50ZXIiLA0KICAgICAgICBCT1RUT01fTEVGVDogImJvdHRvbS1sZWZ0IiwNCiAgICAgICAgQk9UVE9NX1JJR0hUOiAiYm90dG9tLXJpZ2h0Ig0KICAgIH07DQoNCiAgICB2YXIgT1JJRU5UQVRJT04gPSBtcmFpZC5PUklFTlRBVElPTiA9IHsNCiAgICAgICAgUE9SVFJBSVQ6ICJwb3J0cmFpdCIsDQogICAgICAgIExBTkRTQ0FQRTogImxhbmRzY2FwZSIsDQogICAgICAgIE5PTkU6ICJub25lIg0KICAgIH07DQoNCiAgICB2YXIgU0RLX0NBTExTID0gbXJhaWQuU0RLX0NBTExTID0gew0KICAgICAgICBPUEVOOiAnb3BlbicsDQogICAgICAgIENMT1NFOiAnY2xvc2UnLA0KICAgICAgICBQTEFZX1ZJREVPOiAncGxheVZpZGVvJywNCiAgICAgICAgRVhQQU5EOiAnZXhwYW5kJywNCiAgICAgICAgUkVTSVpFOiAncmVzaXplJywNCiAgICAgICAgU1RPUkVfUElDVFVSRTogJ3N0b3JlUGljdHVyZScsDQogICAgICAgIFNFVF9SRVNJWkVfUFJPUEVSVElFUzogJ3NldFJlc2l6ZVByb3BlcnRpZXMnLA0KICAgICAgICBTRVRfRVhQQU5EX1BST1BFUlRJRVM6ICdzZXRFeHBhbmRQcm9wZXJ0aWVzJywNCiAgICAgICAgU0VUX09SSUVOVEFUSU9OX1BST1BFUlRJRVM6ICdzZXRPcmllbnRhdGlvblByb3BlcnRpZXMnLA0KICAgICAgICBVU0VfQ1VTVE9NX0NMT1NFOiAndXNlQ3VzdG9tQ2xvc2UnLA0KICAgICAgICBDUkVBVEVfQ0FMRU5EQVJfRVZFTlQ6ICdjcmVhdGVDYWxlbmRhckV2ZW50JyAgICAgICAgDQogICAgfTsNCg0KICAgIHZhciBOQVRJVkVYX0NBTExTID0gbmF0aXZleC5OQVRJVkVYX0NBTExTID0gew0KICAgICAgICBMT0FERUQ6ICdsb2FkZWQnLA0KICAgICAgICBMT0c6ICdsb2cnLA0KICAgICAgICBBRF9DT05WRVJURUQ6ICdhZENvbnZlcnRlZCcsDQogICAgICAgIFBSRVBBUkVfVklERU86ICdwcmVwYXJlVmlkZW8nLA0KICAgICAgICBWSURFT19PUFRJT05TOiAnc2V0VmlkZW9PcHRpb25zJywNCiAgICAgICAgV0lMTF9DTE9TRV9BRF9PTl9SRURJUkVDVDogJ3dpbGxDbG9zZUFkT25SZWRpcmVjdCcsDQogICAgICAgIFNIT1VMRF9FTkFCTEVfQ0xPU0VfUkVHSU9OOiAnc2hvdWxkRW5hYmxlQ2xvc2VSZWdpb24nDQogICAgfTsNCg0KICAgIC8vICNyZWdpb24gQ29uc3RhbnRzDQogICAgdmFyIE5BVElWRVhfRVZFTlRTID0gbmF0aXZleC5FVkVOVFMgPSB7DQogICAgICAgIFZJREVPX0NBTkNFTExFRDogInZpZGVvQ2FuY2VsbGVkIg0KICAgIH07DQoNCiAgICB2YXIgSlNJX0NBTExTID0gbXJhaWQuSlNJX0NBTExTID0ge307DQogICAgSlNJX0NBTExTW1NES19DQUxMUy5PUEVOXSA9IGZ1bmN0aW9uIChwYXJhbXMpIHsgbmF0aXZlWFNESy5vcGVuKHBhcmFtcykgfTsNCiAgICBKU0lfQ0FMTFNbU0RLX0NBTExTLkNMT1NFXSA9IGZ1bmN0aW9uICgpIHsgbmF0aXZlWFNESy5jbG9zZSgpIH07DQogICAgSlNJX0NBTExTW1NES19DQUxMUy5QTEFZX1ZJREVPXSA9IGZ1bmN0aW9uIChwYXJhbXMpIHsgbmF0aXZlWFNESy5wbGF5VmlkZW8ocGFyYW1zKSB9Ow0KICAgIEpTSV9DQUxMU1tTREtfQ0FMTFMuRVhQQU5EXSA9IGZ1bmN0aW9uIChwYXJhbXMpIHsNCiAgICAgICAgaWYgKHBhcmFtcykgew0KICAgICAgICAgICAgbmF0aXZlWFNESy5leHBhbmQocGFyYW1zKTsNCiAgICAgICAgfSBlbHNlIHsNCiAgICAgICAgICAgIG5hdGl2ZVhTREsuZXhwYW5kKCk7DQogICAgICAgIH0NCiAgICB9Ow0KICAgIEpTSV9DQUxMU1tTREtfQ0FMTFMuUkVTSVpFXSA9IGZ1bmN0aW9uICgpIHsgbmF0aXZlWFNESy5yZXNpemUoKSB9Ow0KICAgIEpTSV9DQUxMU1tTREtfQ0FMTFMuU1RPUkVfUElDVFVSRV0gPSBmdW5jdGlvbiAocGFyYW1zKSB7IG5hdGl2ZVhTREsuc3RvcmVQaWN0dXJlKHBhcmFtcykgfTsNCiAgICBKU0lfQ0FMTFNbU0RLX0NBTExTLlNFVF9SRVNJWkVfUFJPUEVSVElFU10gPSBmdW5jdGlvbiAocGFyYW1zKSB7IG5hdGl2ZVhTREsuc2V0UmVzaXplUHJvcGVydGllcyhwYXJhbXMpIH07DQogICAgSlNJX0NBTExTW1NES19DQUxMUy5TRVRfRVhQQU5EX1BST1BFUlRJRVNdID0gZnVuY3Rpb24gKHBhcmFtcykgeyBuYXRpdmVYU0RLLnNldEV4cGFuZFByb3BlcnRpZXMocGFyYW1zKSB9Ow0KICAgIEpTSV9DQUxMU1tTREtfQ0FMTFMuU0VUX09SSUVOVEFUSU9OX1BST1BFUlRJRVNdID0gZnVuY3Rpb24gKHBhcmFtcykgeyBuYXRpdmVYU0RLLnNldE9yaWVudGF0aW9uUHJvcGVydGllcyhwYXJhbXMpIH07DQogICAgSlNJX0NBTExTW1NES19DQUxMUy5VU0VfQ1VTVE9NX0NMT1NFXSA9IGZ1bmN0aW9uIChwYXJhbXMpIHsgbmF0aXZlWFNESy51c2VDdXN0b21DbG9zZShwYXJhbXMpIH07DQogICAgSlNJX0NBTExTW1NES19DQUxMUy5DUkVBVEVfQ0FMRU5EQVJfRVZFTlRdID0gZnVuY3Rpb24gKHBhcmFtcykgeyBuYXRpdmVYU0RLLmNyZWF0ZUNhbGVuZGFyRXZlbnQocGFyYW1zKSB9Ow0KDQogICAgSlNJX0NBTExTW05BVElWRVhfQ0FMTFMuTE9BREVEXSA9IGZ1bmN0aW9uIChwYXJhbXMpIHsgbmF0aXZlWFNESy5sb2FkZWQoKSB9Ow0KICAgIEpTSV9DQUxMU1tOQVRJVkVYX0NBTExTLkxPR10gPSBmdW5jdGlvbiAocGFyYW1zKSB7IG5hdGl2ZVhTREsubG9nKHBhcmFtcykgfTsNCiAgICBKU0lfQ0FMTFNbTkFUSVZFWF9DQUxMUy5BRF9DT05WRVJURURdID0gZnVuY3Rpb24gKCkgeyBuYXRpdmVYU0RLLmFkQ29udmVydGVkKCk7IH07DQogICAgSlNJX0NBTExTW05BVElWRVhfQ0FMTFMuUFJFUEFSRV9WSURFT10gPSBmdW5jdGlvbiAocGFyYW1zKSB7IG5hdGl2ZVhTREsucHJlcGFyZVZpZGVvKHBhcmFtcyk7IH07DQogICAgSlNJX0NBTExTW05BVElWRVhfQ0FMTFMuVklERU9fT1BUSU9OU10gPSBmdW5jdGlvbiAocGFyYW1zKSB7IG5hdGl2ZVhTREsuc2V0VmlkZW9PcHRpb25zKHBhcmFtcyk7IH07DQogICAgSlNJX0NBTExTW05BVElWRVhfQ0FMTFMuV0lMTF9DTE9TRV9BRF9PTl9SRURJUkVDVF0gPSBmdW5jdGlvbiAocGFyYW1zKSB7IG5hdGl2ZVhTREsud2lsbENsb3NlQWRPblJlZGlyZWN0KHBhcmFtcyk7IH07DQogICAgSlNJX0NBTExTW05BVElWRVhfQ0FMTFMuU0hPVUxEX0VOQUJMRV9DTE9TRV9SRUdJT05dID0gZnVuY3Rpb24gKHBhcmFtcykgeyBuYXRpdmVYU0RLLnNob3VsZEVuYWJsZUNsb3NlUmVnaW9uKHBhcmFtcyk7IH07DQoNCiAgICAvLyAjZW5kcmVnaW9uDQoNCiAgICAvLyAjcmVnaW9uIEZpZWxkcw0KICAgIHZhciBjdXN0b21TY2hlbWUgPSAnbXJhaWQ6Ly8nOw0KICAgIHZhciBuYXRpdmV4U2NoZW1lID0gJ25hdGl2ZXg6Ly8nOw0KICAgIHZhciBjdXN0b21TY2hlbWVDYWxscyA9IHt9Ow0KICAgIHZhciBjdXN0b21TY2hlbWVIZWxwZXIgPSB7DQogICAgICAgIHRpbWVvdXQ6IDEwMCwNCiAgICAgICAgY2FsbElkOiAwLA0KICAgICAgICBnZXROZXh0Q2FsbElkOiBmdW5jdGlvbiAoKSB7DQogICAgICAgICAgICB0aGlzLmNhbGxJZCArPSAxOw0KICAgICAgICAgICAgcmV0dXJuIHRoaXMuY2FsbElkOw0KICAgICAgICB9DQogICAgfTsNCg0KICAgIHZhciBpc0RlYnVnTW9kZSA9IGZhbHNlOw0KDQogICAgdmFyIG1yYWlkVmVyc2lvbiA9ICcyLjAnOw0KDQogICAgdmFyIGxpc3RlbmVycyA9IHt9Ow0KDQogICAgdmFyIHN1cHBvcnRlZEZlYXR1cmVzID0ge307DQogICAgDQogICAgdmFyIHN1cHBvcnRlZE5hdGl2ZVZpZGVvRmVhdHVyZXMgPSB7fTsNCg0KICAgIHZhciBjdXJyZW50U3RhdGUgPSBTVEFURVMuTE9BRElORzsNCg0KICAgIHZhciBwbGFjZW1lbnRUeXBlID0gUExBQ0VNRU5UX1RZUEVTLklOTElORTsNCg0KICAgIHZhciBzY3JlZW5TaXplID0gew0KICAgICAgICB3aWR0aDogMCwNCiAgICAgICAgaGVpZ2h0OiAwDQogICAgfTsNCg0KICAgIHZhciBtYXhTaXplID0gew0KICAgICAgICB3aWR0aDogMCwNCiAgICAgICAgaGVpZ2h0OiAwDQogICAgfTsNCg0KICAgIHZhciByZXNpemVQcm9wZXJ0aWVzID0gew0KICAgICAgICB3aWR0aDogMCwNCiAgICAgICAgaGVpZ2h0OiAwLA0KICAgICAgICBjdXN0b21DbG9zZVBvc2l0aW9uOiBDVVNUT01fQ0xPU0VfUE9TSVRJT04uVE9QX1JJR0hULA0KICAgICAgICBvZmZzZXRYOiAwLA0KICAgICAgICBvZmZzZXRZOiAwLA0KICAgICAgICBhbGxvd09mZnNjcmVlbjogZmFsc2UNCiAgICB9Ow0KDQogICAgdmFyIGV4cGFuZFByb3BlcnRpZXMgPSB7DQogICAgICAgIHdpZHRoOiAwLA0KICAgICAgICBoZWlnaHQ6IDAsDQogICAgICAgIHVzZUN1c3RvbUNsb3NlOiBmYWxzZSwNCiAgICAgICAgaXNNb2RhbDogdHJ1ZQ0KICAgIH07DQoNCiAgICB2YXIgY3VycmVudFBvc2l0aW9uID0gew0KICAgICAgICB4OiAwLA0KICAgICAgICB5OiAwLA0KICAgICAgICB3aWR0aDogMCwNCiAgICAgICAgaGVpZ2h0OiAwDQogICAgfTsNCg0KICAgIHZhciBkZWZhdWx0UG9zaXRpb24gPSB7DQogICAgICAgIHg6IDAsDQogICAgICAgIHk6IDAsDQogICAgICAgIHdpZHRoOiAwLA0KICAgICAgICBoZWlnaHQ6IDANCiAgICB9Ow0KDQogICAgdmFyIG9yaWVudGF0aW9uUHJvcGVydGllcyA9IHsNCiAgICAgICAgYWxsb3dPcmllbnRhdGlvbkNoYW5nZTogdHJ1ZSwNCiAgICAgICAgZm9yY2VPcmllbnRhdGlvbjogT1JJRU5UQVRJT04uTk9ORQ0KICAgIH07DQoNCiAgICB2YXIgaXNWaWV3YWJsZSA9IGZhbHNlOw0KICAgIC8vICNlbmRyZWdpb24NCg0KICAgIC8vICNyZWdpb24gUHVibGljIE1ldGhvZHMNCg0KICAgIC8qDQogICAgICogTVJBSUQgdmVyc2lvbg0KICAgICAqLw0KICAgIC8vIE1SQUlEIDEuMA0KICAgIG1yYWlkLmdldFZlcnNpb24gPSBmdW5jdGlvbiAoKSB7DQogICAgICAgIG1yYWlkLmxvZygnZ2V0VmVyc2lvbicpOw0KDQogICAgICAgIHJldHVybiBtcmFpZFZlcnNpb247DQogICAgfQ0KDQogICAgLyoNCiAgICAgKiBNYW5hZ2UgZXZlbnQgbGlzdGVuZXJzDQogICAgICovDQogICAgLy8gTVJBSUQgMS4wDQogICAgbXJhaWQuYWRkRXZlbnRMaXN0ZW5lciA9IGZ1bmN0aW9uIChldmVudCwgbGlzdGVuZXIpIHsNCiAgICAgICAgbXJhaWQubG9nKCdhZGRFdmVudExpc3RlbmVyLCBldmVudCA9ICcgKyBldmVudCk7DQoNCiAgICAgICAgdmFyIGV2ZW50SGFuZGxlcnMgPSBsaXN0ZW5lcnNbZXZlbnRdOw0KICAgICAgICBpZiAoIWV2ZW50SGFuZGxlcnMpIHsNCiAgICAgICAgICAgIGxpc3RlbmVyc1tldmVudF0gPSBbXTsNCiAgICAgICAgICAgIGV2ZW50SGFuZGxlcnMgPSBsaXN0ZW5lcnNbZXZlbnRdOw0KICAgICAgICB9DQoNCiAgICAgICAgLy8gQ2hlY2sgaWYgdGhlIGxpc3RlbmVyIGhhcyBiZWVuIGFscmVhZHkgYWRkZWQNCiAgICAgICAgZm9yICh2YXIgaSBpbiBldmVudEhhbmRsZXJzKSB7DQogICAgICAgICAgICBpZiAoZXZlbnRIYW5kbGVyc1tpXSA9PT0gbGlzdGVuZXIpIHsNCiAgICAgICAgICAgICAgICByZXR1cm47DQogICAgICAgICAgICB9DQogICAgICAgIH0NCg0KICAgICAgICBldmVudEhhbmRsZXJzLnB1c2gobGlzdGVuZXIpOw0KICAgIH0NCg0KICAgIC8vIE1SQUlEIDEuMA0KICAgIG1yYWlkLnJlbW92ZUV2ZW50TGlzdGVuZXIgPSBmdW5jdGlvbiAoZXZlbnQsIGxpc3RlbmVyKSB7DQogICAgICAgIG1yYWlkLmxvZygncmVtb3ZlRXZlbnRMaXN0ZW5lciwgZXZlbnQgPSAnICsgZXZlbnQpOw0KDQogICAgICAgIHZhciBldmVudEhhbmRsZXJzID0gbGlzdGVuZXJzW2V2ZW50XTsNCiAgICAgICAgaWYgKGV2ZW50SGFuZGxlcnMpIHsNCiAgICAgICAgICAgIGlmIChsaXN0ZW5lcikgew0KICAgICAgICAgICAgICAgIGRlbGV0ZSBldmVudEhhbmRsZXJzW2xpc3RlbmVyXTsNCiAgICAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgICAgbGlzdGVuZXJzW2V2ZW50XSA9IG51bGw7DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQoNCiAgICBtcmFpZC5maXJlRXZlbnQgPSBmdW5jdGlvbiAoZXZlbnQpIHsNCiAgICAgICAgbXJhaWQubG9nKCdmaXJlRXZlbnQsIGV2ZW50ID0gJyArIGV2ZW50KTsNCg0KICAgICAgICB2YXIgZXZlbnRIYW5kbGVycyA9IGxpc3RlbmVyc1tldmVudF07DQogICAgICAgIGlmIChldmVudEhhbmRsZXJzKSB7DQogICAgICAgICAgICBmb3IgKHZhciBpIGluIGV2ZW50SGFuZGxlcnMpIHsNCiAgICAgICAgICAgICAgICBldmVudEhhbmRsZXJzW2ldKCk7DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQoNCiAgICBtcmFpZC5maXJlQ2hhbmdlRXZlbnQgPSBmdW5jdGlvbiAoZXZlbnQsIG5ld1N0YXRlKSB7DQogICAgICAgIG1yYWlkLmxvZygnZmlyZUNoYW5nZUV2ZW50LCBldmVudCA9ICcgKyBldmVudCk7DQoNCiAgICAgICAgdmFyIGV2ZW50SGFuZGxlcnMgPSBsaXN0ZW5lcnNbZXZlbnRdOw0KICAgICAgICBpZiAoZXZlbnRIYW5kbGVycykgew0KICAgICAgICAgICAgZm9yICh2YXIgaSBpbiBldmVudEhhbmRsZXJzKSB7DQogICAgICAgICAgICAgICAgZXZlbnRIYW5kbGVyc1tpXShuZXdTdGF0ZSk7DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQoNCiAgICBtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24gKHdpZHRoLCBoZWlnaHQpIHsNCiAgICAgICAgbXJhaWQubG9nKCJmaXJlU2l6ZUNoYW5nZUV2ZW50LCB3aWR0aCA9IiArIHdpZHRoICsgIiwgaGVpZ2h0ID0gIiArIGhlaWdodCk7DQoNCiAgICAgICAgdmFyIGV2ZW50SGFuZGxlcnMgPSBsaXN0ZW5lcnNbRVZFTlRTLlNJWkVfQ0hBTkdFXTsNCiAgICAgICAgaWYgKGV2ZW50SGFuZGxlcnMpIHsNCiAgICAgICAgICAgIGZvciAodmFyIGkgaW4gZXZlbnRIYW5kbGVycykgew0KICAgICAgICAgICAgICAgIGV2ZW50SGFuZGxlcnNbaV0od2lkdGgsIGhlaWdodCk7DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9Ow0KDQogICAgbXJhaWQuZmlyZUVycm9yRXZlbnQgPSBmdW5jdGlvbiAobWVzc2FnZSwgYWN0aW9uKSB7DQogICAgICAgIG1yYWlkLmxvZygnZmlyZUNoYW5nZUV2ZW50LCBtZXNzYWdlID0gJyArIG1lc3NhZ2UgKyAnLCBhY3Rpb24gPSAnICsgYWN0aW9uKTsNCg0KICAgICAgICB2YXIgZXZlbnRIYW5kbGVycyA9IGxpc3RlbmVyc1tFVkVOVFMuRVJST1JdOw0KICAgICAgICBpZiAoZXZlbnRIYW5kbGVycykgew0KICAgICAgICAgICAgZm9yICh2YXIgaSBpbiBldmVudEhhbmRsZXJzKSB7DQogICAgICAgICAgICAgICAgZXZlbnRIYW5kbGVyc1tpXShtZXNzYWdlLCBhY3Rpb24pOw0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQogICAgfQ0KDQogICAgLyoNCiAgICAgKiBNYW5hZ2Ugc3RhdGUNCiAgICAgKi8NCiAgICAvLyBNUkFJRCAxLjANCiAgICBtcmFpZC5nZXRTdGF0ZSA9IGZ1bmN0aW9uICgpIHsNCiAgICAgICAgbXJhaWQubG9nKCdnZXRTdGF0ZScpOw0KDQogICAgICAgIHJldHVybiBjdXJyZW50U3RhdGU7DQogICAgfQ0KDQogICAgbXJhaWQuc2V0U3RhdGUgPSBmdW5jdGlvbiAobmV3U3RhdGUpIHsNCiAgICAgICAgaWYgKGN1cnJlbnRTdGF0ZSAhPSBuZXdTdGF0ZSkgew0KICAgICAgICAgICAgY3VycmVudFN0YXRlID0gbmV3U3RhdGU7DQogICAgICAgICAgICBpZiAobmV3U3RhdGUgPT0gU1RBVEVTLkhJRERFTikgew0KICAgICAgICAgICAgICAgIC8vIENoZWNrIGZvciB2aWRlb3MgYW5kIGF0dGFjaCBldmVudCBsaXN0ZW5lcnMNCiAgICAgICAgICAgICAgICB2YXIgdmlkZW9UYWdzID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeVRhZ05hbWUoJ3ZpZGVvJyk7DQogICAgICAgICAgICAgICAgZm9yICh2YXIgaSA9IDA7IGkgPCB2aWRlb1RhZ3MubGVuZ3RoOyBpKyspIHsNCiAgICAgICAgICAgICAgICAgICAgdmlkZW9UYWdzW2ldLnBhdXNlKCk7DQogICAgICAgICAgICAgICAgICAgIHZpZGVvVGFnc1tpXS5zcmMgPSAnJzsNCiAgICAgICAgICAgICAgICB9DQogICAgICAgICAgICB9DQogICAgICAgICAgICBtcmFpZC5maXJlQ2hhbmdlRXZlbnQoRVZFTlRTLlNUQVRFX0NIQU5HRSwgbmV3U3RhdGUpOw0KICAgICAgICB9IGVsc2UgaWYgKG5ld1N0YXRlID09PSBTVEFURVMuUkVTSVpFRCkgew0KICAgICAgICAgICAgLy8gTVJBSUQgc3BlY2lmaWNhdGlvbjogIkFuIGV2ZW50IGxpc3RlbmVyIHdpbGwgaGVhciBhIG5ldyBzdGF0ZUNoYW5nZSBldmVudCwNCiAgICAgICAgICAgIC8vIGV2ZW4gdGhvdWdoIHRoZSBzdGF0ZSBpcyBzdGlsbCAncmVzaXplZCcgYWZ0ZXIgdGhlIGV2ZW50IGZpcmVzIg0KICAgICAgICAgICAgbXJhaWQuZmlyZUNoYW5nZUV2ZW50KEVWRU5UUy5TVEFURV9DSEFOR0UsIG5ld1N0YXRlKTsNCiAgICAgICAgfQ0KICAgIH0NCg0KICAgIC8qDQogICAgICogTWFuYWdlIGZlYXR1cmVzDQogICAgICovDQogICAgbXJhaWQuc2V0RmVhdHVyZVN1cHBvcnQgPSBmdW5jdGlvbiAoZmVhdHVyZSwgaXNTdXBwb3J0ZWQpIHsNCiAgICAgICAgc3VwcG9ydGVkRmVhdHVyZXNbZmVhdHVyZV0gPSBpc1N1cHBvcnRlZDsNCiAgICB9DQoNCiAgICAvLyBNUkFJRCAyLjANCiAgICBtcmFpZC5zdXBwb3J0cyA9IGZ1bmN0aW9uIChmZWF0dXJlKSB7DQogICAgICAgIG1yYWlkLmxvZygnc3VwcG9ydHMnKTsNCg0KICAgICAgICByZXR1cm4gc3VwcG9ydGVkRmVhdHVyZXNbZmVhdHVyZV07DQogICAgfQ0KICAgIA0KICAgIC8qDQogICAgICogTWFuYWdlIG5hdGl2ZSB2aWRlbyBmZWF0dXJlcw0KICAgICAqLw0KICAgIG5hdGl2ZXguc2V0TmF0aXZlVmlkZW9GZWF0dXJlU3VwcG9ydCA9IGZ1bmN0aW9uIChmZWF0dXJlKSB7DQogICAgICAgIHN1cHBvcnRlZE5hdGl2ZVZpZGVvRmVhdHVyZXNbZmVhdHVyZV0gPSB0cnVlOw0KICAgIH0NCiAgICANCiAgICBuYXRpdmV4LmlzTmF0aXZlVmlkZW9GZWF0dXJlU3VwcG9ydGVkID0gZnVuY3Rpb24gKGZlYXR1cmUpIHsNCiAgICAJbXJhaWQubG9nKCdpc05hdGl2ZVZpZGVvRmVhdHVyZVN1cHBvcnRlZCcpOw0KICAgIAlyZXR1cm4gc3VwcG9ydGVkTmF0aXZlVmlkZW9GZWF0dXJlc1tmZWF0dXJlXSA/IHRydWUgOiBmYWxzZTsNCiAgICB9DQoNCiAgICAvKg0KICAgICAqIE1hbmFnZSBwbGFjZW1lbnQgdHlwZQ0KICAgICAqLw0KICAgIC8vIE1SQUlEIDEuMA0KICAgIG1yYWlkLmdldFBsYWNlbWVudFR5cGUgPSBmdW5jdGlvbiAoKSB7DQogICAgICAgIG1yYWlkLmxvZygncGxhY2VtZW50VHlwZScpOw0KICAgICAgICByZXR1cm4gcGxhY2VtZW50VHlwZTsNCiAgICB9DQoNCiAgICBtcmFpZC5zZXRQbGFjZW1lbnRUeXBlID0gZnVuY3Rpb24gKG5ld1BsYWNlbWVudFR5cGUpIHsNCiAgICAgICAgcGxhY2VtZW50VHlwZSA9IG5ld1BsYWNlbWVudFR5cGU7DQogICAgfQ0KDQogICAgLyoNCiAgICAgKiBNYW5hZ2Ugc2NlZW4gJiBhZCBzaXplcw0KICAgICAqLw0KICAgIC8vIE1SQUlEIDIuMA0KICAgIG1yYWlkLmdldFNjcmVlblNpemUgPSBmdW5jdGlvbiAoKSB7DQogICAgICAgIG1yYWlkLmxvZygnZ2V0U2NyZWVuU2l6ZScpOw0KDQogICAgICAgIHJldHVybiBzY3JlZW5TaXplOw0KICAgIH0NCg0KICAgIG1yYWlkLnNldFNjcmVlblNpemUgPSBmdW5jdGlvbiAoc2l6ZSkgew0KICAgICAgICBzY3JlZW5TaXplID0gc2l6ZTsNCiAgICB9DQoNCiAgICAvLyBNUkFJRCAyLjANCiAgICBtcmFpZC5nZXRNYXhTaXplID0gZnVuY3Rpb24gKCkgew0KICAgICAgICBtcmFpZC5sb2coJ2dldE1heFNpemUnKTsNCg0KICAgICAgICByZXR1cm4gbWF4U2l6ZTsNCiAgICB9DQoNCiAgICBtcmFpZC5zZXRNYXhTaXplID0gZnVuY3Rpb24gKHNpemUpIHsNCiAgICAgICAgbWF4U2l6ZSA9IHNpemU7DQogICAgICAgIGV4cGFuZFByb3BlcnRpZXMud2lkdGggPSBtYXhTaXplLndpZHRoOw0KICAgICAgICBleHBhbmRQcm9wZXJ0aWVzLmhlaWdodCA9IG1heFNpemUuaGVpZ2h0Ow0KICAgIH0NCg0KICAgIC8qDQogICAgICogQ2xvc2UgYnV0dG9uDQogICAgICovDQogICAgLy8gTVJBSUQgMS4wDQogICAgbXJhaWQudXNlQ3VzdG9tQ2xvc2UgPSBmdW5jdGlvbiAodXNlQ3VzdG9tQ2xvc2UpIHsNCiAgICAgICAgbXJhaWQubG9nKCd1c2VDdXN0b21DbG9zZScpOw0KDQogICAgICAgIGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UgPSB1c2VDdXN0b21DbG9zZTsNCg0KICAgICAgICBtcmFpZC5jYWxsU2RrKG1yYWlkLlNES19DQUxMUy5VU0VfQ1VTVE9NX0NMT1NFLCAndXNlQ3VzdG9tQ2xvc2U9JyArIGVuY29kZVVSSUNvbXBvbmVudCh1c2VDdXN0b21DbG9zZSkpOw0KICAgIH0NCg0KICAgIC8qDQogICAgICogTWFuYWdlIFdlYlZpZXcNCiAgICAgKi8NCiAgICAvLyBNUkFJRCAxLjANCiAgICBtcmFpZC5vcGVuID0gZnVuY3Rpb24gKHVybCkgew0KICAgICAgICBtcmFpZC5sb2coJ29wZW4nKTsNCiAgICAgICAgbXJhaWQuY2FsbFNkayhtcmFpZC5TREtfQ0FMTFMuT1BFTiwgJ3VybD0nICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOw0KICAgIH0NCg0KICAgIC8vIE1SQUlEIDEuMA0KICAgIG1yYWlkLmNsb3NlID0gZnVuY3Rpb24gKCkgew0KICAgICAgICBtcmFpZC5sb2coJ2Nsb3NlJyk7DQogICAgICAgIG1yYWlkLmNhbGxTZGsobXJhaWQuU0RLX0NBTExTLkNMT1NFKTsNCiAgICB9DQoNCiAgICAvLyBNUkFJRCAxLjANCiAgICBtcmFpZC5leHBhbmQgPSBmdW5jdGlvbiAodXJsKSB7DQogICAgICAgIG1yYWlkLmxvZygnZXhwYW5kJyk7DQoNCiAgICAgICAgaWYgKHVybCkgew0KICAgICAgICAgICAgbXJhaWQuY2FsbFNkayhtcmFpZC5TREtfQ0FMTFMuRVhQQU5ELCAndXJsPScgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7DQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICBtcmFpZC5jYWxsU2RrKG1yYWlkLlNES19DQUxMUy5FWFBBTkQpOw0KICAgICAgICB9DQogICAgfQ0KDQogICAgLy8gTVJBSUQgMS4wDQogICAgbXJhaWQucmVzaXplID0gZnVuY3Rpb24gKCkgew0KICAgICAgICBtcmFpZC5sb2coJ3Jlc2l6ZScpOw0KICAgICAgICBtcmFpZC5jYWxsU2RrKG1yYWlkLlNES19DQUxMUy5SRVNJWkUpOw0KICAgIH0NCg0KICAgIC8qDQogICAgICogT3JpZW50YXRpb24NCiAgICAgKi8NCiAgICBtcmFpZC5nZXRPcmllbnRhdGlvblByb3BlcnRpZXMgPSBmdW5jdGlvbiAoKSB7DQogICAgICAgIG1yYWlkLmxvZygnZ2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzJyk7DQoNCiAgICAgICAgcmV0dXJuIG9yaWVudGF0aW9uUHJvcGVydGllczsNCiAgICB9Ow0KDQogICAgbXJhaWQuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzID0gZnVuY3Rpb24gKHByb3BlcnRpZXMpIHsNCiAgICAgICAgdmFyIGF2YWlsYWJsZVByb3BlcnRpZXMgPSBbJ2FsbG93T3JpZW50YXRpb25DaGFuZ2UnLCAnZm9yY2VPcmllbnRhdGlvbiddOw0KICAgICAgICBmb3IgKHZhciBpIGluIGF2YWlsYWJsZVByb3BlcnRpZXMpIHsNCiAgICAgICAgICAgIHZhciBwcm9wZXJ0eUtleSA9IGF2YWlsYWJsZVByb3BlcnRpZXNbaV07DQogICAgICAgICAgICBpZiAocHJvcGVydGllc1twcm9wZXJ0eUtleV0gIT09IHVuZGVmaW5lZCkgew0KICAgICAgICAgICAgICAgIG9yaWVudGF0aW9uUHJvcGVydGllc1twcm9wZXJ0eUtleV0gPSBwcm9wZXJ0aWVzW3Byb3BlcnR5S2V5XTsNCiAgICAgICAgICAgIH0NCiAgICAgICAgfQ0KICAgICAgICBtcmFpZC5jYWxsU2RrKG1yYWlkLlNES19DQUxMUy5TRVRfT1JJRU5UQVRJT05fUFJPUEVSVElFUywgb2JqZWN0VG9RdWVyeVN0cmluZyhvcmllbnRhdGlvblByb3BlcnRpZXMpKTsNCiAgICB9DQoNCiAgICAvKg0KICAgICAqIFByb3BlcnRpZXMNCiAgICAgKi8NCiAgICAvLyBNUkFJRCAxLjANCiAgICBtcmFpZC5nZXRFeHBhbmRQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKCkgew0KICAgICAgICBtcmFpZC5sb2coJ2dldEV4cGFuZFByb3BlcnRpZXMnKTsNCg0KICAgICAgICByZXR1cm4gZXhwYW5kUHJvcGVydGllczsNCiAgICB9DQoNCiAgICAvLyBNUkFJRCAxLjANCiAgICBtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKHByb3BlcnRpZXMpIHsNCiAgICAgICAgdmFyIGF2YWlsYWJsZVByb3BlcnRpZXMgPSBbJ3dpZHRoJywgJ2hlaWdodCcsICd1c2VDdXN0b21DbG9zZSddOw0KICAgICAgICBmb3IgKHZhciBpIGluIGF2YWlsYWJsZVByb3BlcnRpZXMpIHsNCiAgICAgICAgICAgIHZhciBwcm9wZXJ0eUtleSA9IGF2YWlsYWJsZVByb3BlcnRpZXNbaV07DQogICAgICAgICAgICBpZiAocHJvcGVydGllc1twcm9wZXJ0eUtleV0gIT09IHVuZGVmaW5lZCkgew0KICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXNbcHJvcGVydHlLZXldID0gcHJvcGVydGllc1twcm9wZXJ0eUtleV07DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICAgICAgbXJhaWQuY2FsbFNkayhtcmFpZC5TREtfQ0FMTFMuU0VUX0VYUEFORF9QUk9QRVJUSUVTLCBvYmplY3RUb1F1ZXJ5U3RyaW5nKGV4cGFuZFByb3BlcnRpZXMpKTsNCiAgICB9DQoNCiAgICAvLyBNUkFJRCAyLjANCiAgICBtcmFpZC5nZXRSZXNpemVQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKCkgew0KICAgICAgICBtcmFpZC5sb2coJ2dldFJlc2l6ZVByb3BlcnRpZXMnKTsNCg0KICAgICAgICByZXR1cm4gcmVzaXplUHJvcGVydGllczsNCiAgICB9DQoNCiAgICAvLyBNUkFJRCAyLjANCiAgICBtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKHByb3BlcnRpZXMpIHsNCiAgICAgICAgdmFyIGF2YWlsYWJsZVByb3BlcnRpZXMgPSBbJ3dpZHRoJywgJ2hlaWdodCcsICdjdXN0b21DbG9zZVBvc2l0aW9uJywgJ29mZnNldFgnLCAnb2Zmc2V0WScsICdhbGxvd09mZnNjcmVlbiddOw0KICAgICAgICBmb3IgKHZhciBpIGluIGF2YWlsYWJsZVByb3BlcnRpZXMpIHsNCiAgICAgICAgICAgIHZhciBwcm9wZXJ0eUtleSA9IGF2YWlsYWJsZVByb3BlcnRpZXNbaV07DQogICAgICAgICAgICBpZiAocHJvcGVydGllc1twcm9wZXJ0eUtleV0gIT09IHVuZGVmaW5lZCkgew0KICAgICAgICAgICAgICAgIHJlc2l6ZVByb3BlcnRpZXNbcHJvcGVydHlLZXldID0gcHJvcGVydGllc1twcm9wZXJ0eUtleV07DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICAgICAgbXJhaWQuY2FsbFNkayhtcmFpZC5TREtfQ0FMTFMuU0VUX1JFU0laRV9QUk9QRVJUSUVTLCBvYmplY3RUb1F1ZXJ5U3RyaW5nKHJlc2l6ZVByb3BlcnRpZXMpKTsNCiAgICB9DQoNCiAgICAvKg0KICAgICAqIFBvc2l0aW9uDQogICAgICovDQogICAgLy8gTVJBSUQgMi4wDQogICAgbXJhaWQuZ2V0RGVmYXVsdFBvc2l0aW9uID0gZnVuY3Rpb24gKCkgew0KICAgICAgICBtcmFpZC5sb2coJ2dldERlZmF1bHRQb3NpdGlvbicpOw0KDQogICAgICAgIHJldHVybiBkZWZhdWx0UG9zaXRpb247DQogICAgfQ0KDQogICAgbXJhaWQuc2V0RGVmYXVsdFBvc2l0aW9uID0gZnVuY3Rpb24gKHBvc2l0aW9uKSB7DQogICAgICAgIGRlZmF1bHRQb3NpdGlvbiA9IHBvc2l0aW9uOw0KICAgIH0NCg0KICAgIC8vIE1SQUlEIDIuMA0KICAgIG1yYWlkLmdldEN1cnJlbnRQb3NpdGlvbiA9IGZ1bmN0aW9uICgpIHsNCiAgICAgICAgbXJhaWQubG9nKCdnZXRDdXJyZW50UG9zaXRpb24nKTsNCg0KICAgICAgICByZXR1cm4gY3VycmVudFBvc2l0aW9uOw0KICAgIH0NCg0KICAgIG1yYWlkLnNldEN1cnJlbnRQb3NpdGlvbiA9IGZ1bmN0aW9uIChwb3NpdGlvbikgew0KICAgICAgICB2YXIgcHJldmlvdXNQb3NpdGlvbiA9IGdldFRlbXBQb3NpdGlvbigpOw0KICAgICAgICBjdXJyZW50UG9zaXRpb24gPSBwb3NpdGlvbjsNCg0KICAgICAgICAvLyBTZW5kIHNpemUgY2hhbmdlZCBldmVudCBvbmx5IGlmIHByZXZpb3VzUG9zaXRpb24gIT0gY3VycmVudFBvc2l0aW9uDQogICAgICAgIGlmIChwcmV2aW91c1Bvc2l0aW9uLndpZHRoICE9IGN1cnJlbnRQb3NpdGlvbi53aWR0aCB8fCBwcmV2aW91c1Bvc2l0aW9uLmhlaWdodCAhPSBjdXJyZW50UG9zaXRpb24uaGVpZ2h0KSB7DQogICAgICAgICAgICBtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50KGN1cnJlbnRQb3NpdGlvbi53aWR0aCwgY3VycmVudFBvc2l0aW9uLmhlaWdodCk7DQogICAgICAgIH0NCiAgICB9DQoNCiAgICAvKg0KICAgICAqIENhbGVuZGFyIGV2ZW50cw0KICAgICAqLw0KICAgIC8vIE1SQUlEIDIuMA0KICAgIG1yYWlkLmNyZWF0ZUNhbGVuZGFyRXZlbnQgPSBmdW5jdGlvbiAocGFyYW1ldGVycykgew0KICAgICAgICBtcmFpZC5sb2coJ2NyZWF0ZUNhbGVuZGFyRXZlbnQnKTsNCg0KICAgICAgICB2YXIgY2FsZW5kYXJQYXJhbWV0ZXJzID0ge307DQogICAgICAgIHZhciBhdmFpbGFibGVQYXJhbWV0ZXJzID0gWydkZXNjcmlwdGlvbicsICdsb2NhdGlvbicsICdzdW1tYXJ5JywgJ3N0YXJ0JywgJ2VuZCcsICdzdGF0dXMnLCAndHJhbnNwYXJlbmN5JywgJ3JlbWluZGVyJ107DQogICAgICAgIGZvciAodmFyIGkgaW4gYXZhaWxhYmxlUGFyYW1ldGVycykgew0KICAgICAgICAgICAgdmFyIHBhcmFtZXRlcktleSA9IGF2YWlsYWJsZVBhcmFtZXRlcnNbaV07DQogICAgICAgICAgICBpZiAocGFyYW1ldGVyc1twYXJhbWV0ZXJLZXldICE9PSB1bmRlZmluZWQpIHsNCiAgICAgICAgICAgICAgICBjYWxlbmRhclBhcmFtZXRlcnNbcGFyYW1ldGVyS2V5XSA9IHBhcmFtZXRlcnNbcGFyYW1ldGVyS2V5XTsNCiAgICAgICAgICAgIH0NCiAgICAgICAgfQ0KICAgICAgICBtcmFpZC5jYWxsU2RrKG1yYWlkLlNES19DQUxMUy5DUkVBVEVfQ0FMRU5EQVJfRVZFTlQsIG9iamVjdFRvUXVlcnlTdHJpbmcoY2FsZW5kYXJQYXJhbWV0ZXJzKSk7DQogICAgfQ0KDQogICAgLyoNCiAgICAgKiBWaWRlbw0KICAgICAqLw0KICAgIC8vIE1SQUlEIDIuMA0KICAgIG1yYWlkLnBsYXlWaWRlbyA9IGZ1bmN0aW9uICh1cmwpIHsNCiAgICAgICAgbXJhaWQubG9nKCdwbGF5VmlkZW8nKTsNCiAgICAgICAgbXJhaWQuY2FsbFNkayhtcmFpZC5TREtfQ0FMTFMuUExBWV9WSURFTywgJ3VybD0nICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOw0KICAgIH0NCg0KICAgIC8qDQogICAgICogUGljdHVyZXMNCiAgICAgKi8NCiAgICAvLyBNUkFJRCAyLjANCiAgICBtcmFpZC5zdG9yZVBpY3R1cmUgPSBmdW5jdGlvbiAodXJsKSB7DQogICAgICAgIG1yYWlkLmxvZygnc3RvcmVQaWN0dXJlJyk7DQogICAgICAgIG1yYWlkLmNhbGxTZGsobXJhaWQuU0RLX0NBTExTLlNUT1JFX1BJQ1RVUkUsICd1cmw9JyArIGVuY29kZVVSSUNvbXBvbmVudCh1cmwpKTsNCiAgICB9DQoNCiAgICAvKg0KICAgICAqIFZpZXdhYmxlDQogICAgICovDQogICAgLy8gTVJBSUQgMS4wDQogICAgbXJhaWQuaXNWaWV3YWJsZSA9IGZ1bmN0aW9uICgpIHsNCiAgICAgICAgbXJhaWQubG9nKCdpc1ZpZXdhYmxlJyk7DQoNCiAgICAgICAgcmV0dXJuIGlzVmlld2FibGU7DQogICAgfQ0KDQogICAgbXJhaWQuc2V0SXNWaWV3YWJsZSA9IGZ1bmN0aW9uICh2aWV3YWJsZSkgew0KICAgICAgICBpZiAoaXNWaWV3YWJsZSAhPSB2aWV3YWJsZSkgew0KICAgICAgICAgICAgaXNWaWV3YWJsZSA9IHZpZXdhYmxlOw0KICAgICAgICAgICAgbXJhaWQuZmlyZUNoYW5nZUV2ZW50KEVWRU5UUy5WSUVXQUJMRV9DSEFOR0UsIHZpZXdhYmxlKTsNCiAgICAgICAgfQ0KICAgIH0NCg0KICAgIC8qDQogICAgICogVXRpbGl0aWVzDQogICAgICovDQogICAgbXJhaWQubG9nID0gZnVuY3Rpb24gKGxvZykgew0KICAgICAgICBuYXRpdmV4LmxvZyhsb2cpOw0KICAgIH0NCg0KICAgIG1yYWlkLnNldElzRGVidWdNb2RlID0gZnVuY3Rpb24gKGlzRW5hYmxlZCkgew0KICAgICAgICBuYXRpdmV4LnNldElzRGVidWdNb2RlKGlzRW5hYmxlZCk7DQogICAgfQ0KDQogICAgbXJhaWQuY2FsbFNkayA9IGZ1bmN0aW9uIChtZXRob2QsIHBhcmFtcywgc2NoZW1lKSB7DQogICAgICAgIGlmICghc2NoZW1lKSB7DQogICAgICAgICAgICBzY2hlbWUgPSBjdXN0b21TY2hlbWU7DQogICAgICAgIH0NCg0KICAgICAgICB0cnkgew0KICAgICAgICAgICAgaWYgKHR5cGVvZiBuYXRpdmVYU0RLICE9PSAndW5kZWZpbmVkJykgew0KICAgICAgICAgICAgICAgIGlmIChwYXJhbXMpIHsNCiAgICAgICAgICAgICAgICAgICAgSlNJX0NBTExTW21ldGhvZF0ocGFyYW1zKTsNCiAgICAgICAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgICAgICAgICBKU0lfQ0FMTFNbbWV0aG9kXSgpOw0KICAgICAgICAgICAgICAgIH0NCiAgICAgICAgICAgICAgICByZXR1cm47DQogICAgICAgICAgICB9DQogICAgICAgIH0gY2F0Y2ggKGVycikgeyB9DQoNCiAgICAgICAgLy8gdGhlIEpTSSBjYWxsIGRpZCBub3Qgc3VjY2VlZGVkLCBmYWxsYmFjayB0byBjdXN0b20gc2NoZW1lDQogICAgICAgIC8vIGdlbmVyYXRlIGEgbmV3IGNhbGwgaWQNCiAgICAgICAgdmFyIGNhbGxJZCA9IGN1c3RvbVNjaGVtZUhlbHBlci5nZXROZXh0Q2FsbElkKCk7DQogICAgICAgIGlmIChwYXJhbXMpIHsNCiAgICAgICAgICAgIHBhcmFtcyArPSAnJic7DQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICBwYXJhbXMgPSAnJzsNCiAgICAgICAgfQ0KICAgICAgICBwYXJhbXMgKz0gJ2NhbGxJZD0nICsgY2FsbElkOw0KDQogICAgICAgIC8vIG1ha2UgdGhlIGNhbGwgdXNpbmcgY3VzdG9tIHNjaGVtZQ0KICAgICAgICB2YXIgY2FsbCA9IHNjaGVtZSArIG1ldGhvZCArIChwYXJhbXMgPyAnLz8nICsgcGFyYW1zIDogJy8nKTsNCiAgICAgICAgbWFrZUN1c3RvbVNjaGVtZUNhbGwoY2FsbCk7DQoNCiAgICAgICAgLy8gYXR0YWNoIGEgc2V0SW50ZXJ2YWwgaGFuZGxlciB0byB0aGUgZ2VuZXJhdGVkIGNhbGwgaWQNCiAgICAgICAgLy8gd2hpY2ggd2lsbCByZXRyeSB0aGUgY2FsbCBldmVyeSAiY3VzdG9tU2NoZW1lSGVscGVyLnRpbWVvdXQiIG1pbGxpc2Vjb25kcw0KICAgICAgICBjdXN0b21TY2hlbWVDYWxsc1tjYWxsSWRdID0gc2V0SW50ZXJ2YWwoZnVuY3Rpb24gKCkgew0KICAgICAgICAgICAgbWFrZUN1c3RvbVNjaGVtZUNhbGwoY2FsbCk7DQogICAgICAgIH0sIGN1c3RvbVNjaGVtZUhlbHBlci50aW1lb3V0KTsNCiAgICB9DQoNCiAgICBtcmFpZC5jYWxsUmVjZWl2ZWQgPSBmdW5jdGlvbiAoY2FsbElkKSB7DQogICAgICAgIC8vIHRyeSB0byBmaW5kIGEgc2V0SW50ZXJ2YWwgaGFuZGxlciBmb3IgdGhhdCBjYWxsIGlkDQogICAgICAgIHZhciBjYWxsSGFuZGxlciA9IGN1c3RvbVNjaGVtZUNhbGxzW2NhbGxJZF07DQogICAgICAgIGlmIChjYWxsSGFuZGxlcikgew0KICAgICAgICAgICAgLy8gY2xlYXIgdGhlIGludGV2YWwgYW5kIHJlbW92ZSB0aGUgaGFuZGxlcg0KICAgICAgICAgICAgY2xlYXJJbnRlcnZhbChjYWxsSGFuZGxlcik7DQogICAgICAgICAgICBjYWxsSGFuZGxlciA9IG51bGw7DQogICAgICAgICAgICBkZWxldGUgY3VzdG9tU2NoZW1lQ2FsbHNbY2FsbElkXTsNCiAgICAgICAgfQ0KICAgIH0NCiAgICAvLyAjZW5kcmVnaW9uDQoNCiAgICAvLyAjcmVnaW9uIFByaXZhdGUgTWV0aG9kcw0KICAgIGZ1bmN0aW9uIG1ha2VDdXN0b21TY2hlbWVDYWxsKGNhbGwpIHsNCiAgICAgICAgdmFyIGlmcmFtZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2lmcmFtZScpOw0KICAgICAgICBpZnJhbWUuc2V0QXR0cmlidXRlKCdzcmMnLCBjYWxsKTsNCiAgICAgICAgLy8gSW52b2tlIHRoZSB1cmwgYnkgYXBwZW5kaW5nIGFuIGlmcmFtZSB0byB0aGUgZG9jdW1lbnQNCiAgICAgICAgZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKGlmcmFtZSk7DQogICAgICAgIGlmcmFtZS5wYXJlbnROb2RlLnJlbW92ZUNoaWxkKGlmcmFtZSk7DQogICAgICAgIGlmcmFtZSA9IG51bGw7DQogICAgfQ0KDQogICAgZnVuY3Rpb24gb2JqZWN0VG9RdWVyeVN0cmluZyhqc29uKSB7DQogICAgICAgIHZhciByZXN1bHQgPSAnJzsNCiAgICAgICAgZm9yIChwcm9wZXJ0eSBpbiBqc29uKSB7DQogICAgICAgICAgICBpZiAocmVzdWx0KSB7DQogICAgICAgICAgICAgICAgcmVzdWx0ICs9ICcmJzsNCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgIHJlc3VsdCArPSAoZW5jb2RlVVJJQ29tcG9uZW50KHByb3BlcnR5KSArICc9JyArIGVuY29kZVVSSUNvbXBvbmVudChqc29uW3Byb3BlcnR5XSkpOw0KICAgICAgICB9DQogICAgICAgIHJldHVybiByZXN1bHQ7DQogICAgfQ0KDQogICAgZnVuY3Rpb24gZ2V0VGVtcFBvc2l0aW9uKCkgew0KICAgICAgICByZXR1cm4gew0KICAgICAgICAgICAgd2lkdGg6IGN1cnJlbnRQb3NpdGlvbi53aWR0aCwNCiAgICAgICAgICAgIGhlaWdodDogY3VycmVudFBvc2l0aW9uLmhlaWdodA0KICAgICAgICB9Ow0KICAgIH0NCg0KICAgIHZhciBuYXRpdmV4TGlzdGVuZXJzID0ge307DQoNCiAgICAvKg0KICAgICAqIE1hbmFnZSBuYXRpdmV4IGV2ZW50IGxpc3RlbmVycw0KICAgICAqLw0KICAgIG5hdGl2ZXguYWRkRXZlbnRMaXN0ZW5lciA9IGZ1bmN0aW9uIChldmVudCwgbGlzdGVuZXIpIHsNCiAgICAgICAgbXJhaWQubG9nKCcgbmF0aXZleCBhZGRFdmVudExpc3RlbmVyLCBldmVudCA9ICcgKyBldmVudCk7DQoNCiAgICAgICAgdmFyIGV2ZW50SGFuZGxlcnMgPSBuYXRpdmV4TGlzdGVuZXJzW2V2ZW50XTsNCiAgICAgICAgaWYgKCFldmVudEhhbmRsZXJzKSB7DQogICAgICAgICAgICBuYXRpdmV4TGlzdGVuZXJzW2V2ZW50XSA9IFtdOw0KICAgICAgICAgICAgZXZlbnRIYW5kbGVycyA9IG5hdGl2ZXhMaXN0ZW5lcnNbZXZlbnRdOw0KICAgICAgICB9DQoNCiAgICAgICAgLy8gQ2hlY2sgaWYgdGhlIGxpc3RlbmVyIGhhcyBiZWVuIGFscmVhZHkgYWRkZWQNCiAgICAgICAgZm9yICh2YXIgaSBpbiBldmVudEhhbmRsZXJzKSB7DQogICAgICAgICAgICBpZiAoZXZlbnRIYW5kbGVyc1tpXSA9PT0gbGlzdGVuZXIpIHsNCiAgICAgICAgICAgICAgICByZXR1cm47DQogICAgICAgICAgICB9DQogICAgICAgIH0NCg0KICAgICAgICBldmVudEhhbmRsZXJzLnB1c2gobGlzdGVuZXIpOw0KICAgIH0NCiAgICANCiAgICBuYXRpdmV4LnJlbW92ZUV2ZW50TGlzdGVuZXIgPSBmdW5jdGlvbiAoZXZlbnQsIGxpc3RlbmVyKSB7DQogICAgICAgIG1yYWlkLmxvZygnbmF0aXZleCByZW1vdmVFdmVudExpc3RlbmVyLCBldmVudCA9ICcgKyBldmVudCk7DQoNCiAgICAgICAgdmFyIGV2ZW50SGFuZGxlcnMgPSBuYXRpdmV4TGlzdGVuZXJzW2V2ZW50XTsNCiAgICAgICAgaWYgKGV2ZW50SGFuZGxlcnMpIHsNCiAgICAgICAgICAgIGlmIChsaXN0ZW5lcikgew0KICAgICAgICAgICAgICAgIGRlbGV0ZSBldmVudEhhbmRsZXJzW2xpc3RlbmVyXTsNCiAgICAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgICAgbmF0aXZleExpc3RlbmVyc1tldmVudF0gPSBudWxsOw0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQogICAgfQ0KDQogICAgbmF0aXZleC5maXJlRXZlbnQgPSBmdW5jdGlvbiAoZXZlbnQpIHsNCiAgICAgICAgbXJhaWQubG9nKCduYXRpdmV4IGZpcmVFdmVudCwgZXZlbnQgPSAnICsgZXZlbnQpOw0KDQogICAgICAgIHZhciBldmVudEhhbmRsZXJzID0gbmF0aXZleExpc3RlbmVyc1tldmVudF07DQogICAgICAgIGlmIChldmVudEhhbmRsZXJzKSB7DQogICAgICAgICAgICBmb3IgKHZhciBpIGluIGV2ZW50SGFuZGxlcnMpIHsNCiAgICAgICAgICAgICAgICBldmVudEhhbmRsZXJzW2ldKCk7DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQoNCiAgICBuYXRpdmV4LnNldFZpZGVvT3B0aW9ucyA9IGZ1bmN0aW9uIChvcHRpb25zKSB7DQogICAgICAgIG1yYWlkLmNhbGxTZGsoTkFUSVZFWF9DQUxMUy5WSURFT19PUFRJT05TLCBKU09OLnN0cmluZ2lmeShvcHRpb25zKSwgbmF0aXZleFNjaGVtZSk7DQogICAgfQ0KDQogICAgdmFyIHByZXZpb3VzT3JpZW50YXRpb24gPSB3aW5kb3cub3JpZW50YXRpb247DQogICAgdmFyIGNoZWNrT3JpZW50YXRpb24gPSBmdW5jdGlvbiAoKSB7DQogICAgICAgIGlmICh3aW5kb3cub3JpZW50YXRpb24gIT09IHByZXZpb3VzT3JpZW50YXRpb24pIHsNCiAgICAgICAgICAgIHByZXZpb3VzT3JpZW50YXRpb24gPSB3aW5kb3cub3JpZW50YXRpb247DQogICAgICAgIH0NCiAgICB9DQogICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoInJlc2l6ZSIsIGNoZWNrT3JpZW50YXRpb24sIGZhbHNlKTsNCiAgICAvLyAjZW5kcmVnaW9uDQoNCiAgICAvLyAjcmVnaW9uIE5hdGl2ZVggZXh0ZW5zaW9ucw0KDQogICAgbmF0aXZleC5hZENvbnZlcnRlZCA9IGZ1bmN0aW9uICgpIHsNCiAgICAgICAgbXJhaWQuY2FsbFNkayhOQVRJVkVYX0NBTExTLkFEX0NPTlZFUlRFRCwgbnVsbCwgbmF0aXZleFNjaGVtZSk7DQogICAgfQ0KDQogICAgbmF0aXZleC5wcmVwYXJlVmlkZW8gPSBmdW5jdGlvbiAodXJsKSB7DQogICAgICAgIG1yYWlkLmNhbGxTZGsoTkFUSVZFWF9DQUxMUy5QUkVQQVJFX1ZJREVPLCB1cmwsIG5hdGl2ZXhTY2hlbWUpOw0KICAgIH0NCg0KICAgIG5hdGl2ZXgud2lsbENsb3NlQWRPblJlZGlyZWN0ID0gZnVuY3Rpb24od2lsbENsb3NlKSB7DQogICAgICAgIG1yYWlkLmNhbGxTZGsoTkFUSVZFWF9DQUxMUy5XSUxMX0NMT1NFX0FEX09OX1JFRElSRUNULCB3aWxsQ2xvc2UsIG5hdGl2ZXhTY2hlbWUpOw0KICAgIH0NCg0KICAgIG5hdGl2ZXguc2hvdWxkRW5hYmxlQ2xvc2VSZWdpb24gPSBmdW5jdGlvbihzaG91bGRFbmFibGUpIHsNCiAgICAgICAgbXJhaWQuY2FsbFNkayhOQVRJVkVYX0NBTExTLlNIT1VMRF9FTkFCTEVfQ0xPU0VfUkVHSU9OLCBzaG91bGRFbmFibGUsIG5hdGl2ZXhTY2hlbWUpOw0KICAgIH0NCg0KICAgIG5hdGl2ZXgubG9nID0gZnVuY3Rpb24gKGxvZykgew0KICAgICAgICBpZiAoaXNEZWJ1Z01vZGUpIHsNCiAgICAgICAgICAgIG1yYWlkLmNhbGxTZGsoTkFUSVZFWF9DQUxMUy5MT0csIGVuY29kZVVSSUNvbXBvbmVudChsb2cpLCBuYXRpdmV4U2NoZW1lKTsNCiAgICAgICAgfQ0KICAgIH0NCg0KICAgIG5hdGl2ZXguc2V0SXNEZWJ1Z01vZGUgPSBmdW5jdGlvbiAoaXNFbmFibGVkKSB7DQogICAgICAgIGlzRGVidWdNb2RlID0gaXNFbmFibGVkOw0KICAgIH0NCg0KICAgIC8vICNlbmRyZWdpb24NCg0KICAgIC8vIFRlbGwgU0RLIHRoYXQgdGhlIE1SQUlEIG9iamVjdCBpcyBhdmFpbGFibGUuDQogICAgbXJhaWQuY2FsbFNkayhOQVRJVkVYX0NBTExTLkxPQURFRCwgbnVsbCwgbmF0aXZleFNjaGVtZSk7DQp9DQoNCmlmICghd2luZG93Lm1yYWlkKSB7DQogICAgd2luZG93Lm1yYWlkSW5pdCgpOw0KfQ=="

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 593
    .local v0, "decodedBytes":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidController:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v0    # "decodedBytes":[B
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MRAIDContainer: Exception while loading mraid controller from assets"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadSizeScript()V
    .locals 4

    .prologue
    .line 601
    :try_start_0
    const-string v2, "d2luZG93LmluaXROYXRpdmVYU2l6ZVNjcmlwdCA9IGZ1bmN0aW9uICgpIHsKIAl2YXIgbmF0aXZl WFNpemVTY3JpcHQgPSB3aW5kb3cubmF0aXZlWFNpemVTY3JpcHQgPSB7fTsKIAkKIAkvLyBUaGlz IGlzIHNjcmlwdCB0aGF0IHJldHJpZXZlcyB0aGUgc2l6ZSBvZiB0aGUgd2ViIHBhZ2UgaW4gb3Jk ZXIgdG8gc2l6ZSB0aGUgd2ViIHZpZXcuCiAJbmF0aXZlWFNpemVTY3JpcHQuZ2V0UGFnZVNpemUg PSBmdW5jdGlvbiAoKSB7CiAgCQlpZiAoZG9jdW1lbnQgJiYgZG9jdW1lbnQuYm9keSkgewogIAkJ CXZhciBoZWlnaHQgPSAwLCB3aWR0aCA9IDA7CiAgCQkJdHJ5IHsKICAJCQkJLy8gZmlyc3QgaXQg cmV0cmlldmVzIGFsbCB0aGUgY2hpbGRyZW4gaW4gdGhlIGRvY3VtZW50IGJvZHkuCgkgIAkJCXZh ciBib2R5Q2hpbGRyZW4gPSBkb2N1bWVudC5ib2R5LmNoaWxkcmVuOwoJICAJCQlpZihib2R5Q2hp bGRyZW4ubGVuZ3RoICE9IDApewoJICAJCQkJLy8gdGhlbiBpdCBsb29wcyB0aHJvdWdoIHRoZW0g YW5kIGZpbmRzIHRoZSBmaXJzdCB0aGF0IGlzIG5vdCA8c2NyaXB0PgoJICAJCQkJZm9yICh2YXIg aSA9IDA7IGkgPCBib2R5Q2hpbGRyZW4ubGVuZ3RoOyBpKyspIHsKCQkgIAkJCQl2YXIgZWxlbSA9 IGJvZHlDaGlsZHJlbltpXTsKCQkgIAkJCQl2YXIgdHlwZSA9IGVsZW0udGFnTmFtZS50b0xvd2Vy Q2FzZSgpOwoJCSAgCQkJCWlmKHR5cGUgIT0gJ3NjcmlwdCcpewoJCSAgCQkJCQkvLyBJTVBPUlRB TlQ6IGl0IGlzIGNvbnNpZGVyZWQgdGhhdCB0aGVyZSB3aWxsIGJlIG9ubHkgMSBub24tc2NyaXB0 IGVsZW1lbnQgaW4gdGhlIGJvZHkgYW5kIGl0J3Mgc2l6ZSBkZXRlcm1pbmVzIHRoZSBzaXplIG9m IHRoZQoJCSAgCQkJCQkvLyB3ZWIgcGFnZS4KCQkgIAkJCQkJdmFyIHNpemUgPSBlbGVtLmdldEJv dW5kaW5nQ2xpZW50UmVjdCgpOwoJCSAgCQkJCQl3aWR0aCA9IE1hdGgubWF4KHNpemUud2lkdGgs IHdpZHRoKTsKCQkgIAkJCQkJaGVpZ2h0ID0gTWF0aC5tYXgoc2l6ZS5oZWlnaHQsIGhlaWdodCk7 CgkJICAJCQkJCWJyZWFrOwoJCSAgCQkJCX0KCSAgCQkJCX0KCSAgCQkJCQoJICAJCQl9CiAgCQkJ fSBjYXRjaCAoZSkgewogIAkJCQljb25zb2xlLmxvZygnRmFpbGVkIHRvIGdldCBwYWdlIHNpemUg LSAnICsgZSk7CiAgCQkJfQogIAkJCS8vIHNlbmQgYSBtZXNzYWdlIHRvIHRoZSBzZGsgd2l0aCB0 aGUgc2l6ZS4KICAJCQluYXRpdmVYU2l6ZVNjcmlwdC5jYWxsU2RrKCd3aWR0aD0nICsgd2lkdGgg KyAnJmhlaWdodD0nICsgaGVpZ2h0KTsKICAJCX0gZWxzZSB7CiAgIAkJCS8vIGNvbnNvbGUubG9n KCdib2R5IGlzIG1pc3NpbmcnKTsKICAJCX0KIAl9CiAJCiAJbmF0aXZlWFNpemVTY3JpcHQuY2Fs bFNkayA9IGZ1bmN0aW9uIChwYXJhbXMpIHsKIAkJdHJ5IHsKICAgIAkJaWYgKHR5cGVvZiBuYXRp dmVYU0RLICE9PSAndW5kZWZpbmVkJykgewoJICAgIAkJbmF0aXZlWFNESy5zZXRQYWdlU2l6ZShw YXJhbXMpOwogICAgCQkJcmV0dXJuOwogICAgCQl9CiAgICAJfSBjYXRjaCAoZSkgewogICAgCX0K ICAgIAkKICAgIAl2YXIgaWZyYW1lID0gZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnaWZyYW1lJyk7 CgkgICAgaWZyYW1lLnNldEF0dHJpYnV0ZSgnc3JjJywgJ25hdGl2ZVhTaXplU2NyaXB0Oi8vc2V0 UGFnZVNpemUvPycgKyBwYXJhbXMpOwoJICAgIC8vIEludm9rZSB0aGUgdXJsIGJ5IGFwcGVuZGlu ZyBhbiBpZnJhbWUgdG8gdGhlIGRvY3VtZW50CgkgICAgZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50 LmFwcGVuZENoaWxkKGlmcmFtZSk7CgkgICAgaWZyYW1lLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQo aWZyYW1lKTsKCSAgICBpZnJhbWUgPSBudWxsOwogICAgfQp9CgppZiAoIXdpbmRvdy5uYXRpdmVY U2l6ZVNjcmlwdCkgewogCXdpbmRvdy5pbml0TmF0aXZlWFNpemVTY3JpcHQoKTsKfQ=="

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 602
    .local v0, "decodedBytes":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .end local v0    # "decodedBytes":[B
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MRAIDContainer: Exception while loading mraid controller from assets"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadSizeScriptData(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "htmlData"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, -0x1

    .line 699
    if-nez p1, :cond_0

    .line 719
    :goto_0
    return-void

    .line 702
    :cond_0
    const-string v3, "<html"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 703
    .local v2, "indexOfHtml":I
    if-le v2, v4, :cond_2

    .line 704
    const-string v3, "<head"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, "indexOfHead":I
    if-le v1, v4, :cond_1

    .line 707
    const-string v3, "</head>"

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 708
    .local v0, "bracketIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</script>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 711
    .end local v0    # "bracketIndex":I
    :cond_1
    const-string v3, ">"

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 712
    .restart local v0    # "bracketIndex":I
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<head><script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</script></head>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 716
    .end local v0    # "bracketIndex":I
    .end local v1    # "indexOfHead":I
    :cond_2
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<html><head><script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</script></head>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v3, "</html>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private makeTransparent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setBackgroundColor(I)V

    .line 186
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 187
    .local v0, "transparentDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    return-void
.end method

.method private setVideoAutoPlayEnabled(Landroid/webkit/WebSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/webkit/WebSettings;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 138
    return-void
.end method


# virtual methods
.method getContainer()Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    return-object v0
.end method

.method getInitialLayerType()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getLayerType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 144
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v1

    move v1, v2

    .line 148
    goto :goto_0
.end method

.method isAdLoaded()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adLoaded:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 197
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 201
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isHardwareAccelerated"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 204
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 205
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 206
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    move v1, v2

    .line 209
    goto :goto_0
.end method

.method loadAd(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sdCardFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdFromSDCard()V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdFromServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method loadAdFromSDCard()V
    .locals 8

    .prologue
    .line 411
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/nativex/mraid/"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sdCardFileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    .local v4, "sdCardFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v1, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 417
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/io/IOException;
    const-string v5, " ERROR IOException in reading SD Card file"

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 426
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 421
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading Ad from SD card "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdData(Ljava/lang/StringBuilder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method loadAdFromServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    .line 430
    invoke-static {}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getInstance()Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getRichMedia(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V

    .line 568
    return-void
.end method

.method declared-synchronized loadDownloadedData()V
    .locals 13

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isSecondPartWebView(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Error while downloading the ad"

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 629
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adReleased:Z

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Ad was released before the content was loaded."

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v7

    .line 691
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Failed to load ad"

    invoke-static {v0, v7}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 692
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdFailed()V

    .line 693
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->ERROR:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "Error while downloading the ad"

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 623
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 641
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/StringBuilder;

    .line 642
    .local v8, "mraidLoadedData":Ljava/lang/StringBuilder;
    const-string v0, "<video"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 644
    const-string v0, "MRAID has no video. Turning hardware acceleration off"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setSoftwareLayerType()V

    .line 648
    :cond_3
    const-string v12, "mraid.js"

    .line 649
    .local v12, "searchString":Ljava/lang/String;
    const-string v0, "mraid.js"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 650
    .local v9, "mraidPosition":I
    :goto_1
    const/4 v0, -0x1

    if-le v9, v0, :cond_4

    .line 652
    const-string v0, ">"

    invoke-virtual {v8, v0, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v6

    .line 653
    .local v6, "closeBracketPosition":I
    const-string v0, "<script "

    invoke-virtual {v8, v0, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v11

    .line 655
    .local v11, "scriptTagPosition":I
    if-ge v6, v11, :cond_6

    .line 658
    const-string v0, "</script>"

    invoke-virtual {v8, v0, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 659
    .local v10, "scriptTagClosePosition":I
    invoke-virtual {v8, v11, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidController:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 670
    .end local v6    # "closeBracketPosition":I
    .end local v10    # "scriptTagClosePosition":I
    .end local v11    # "scriptTagPosition":I
    :cond_4
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    if-nez v0, :cond_7

    .line 672
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->isSecondPartWebView(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 673
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->trackClick(Ljava/lang/String;)V

    .line 676
    :cond_5
    invoke-direct {p0, v8}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadSizeScriptData(Ljava/lang/StringBuilder;)V

    .line 678
    const-string v0, "Not a MRAID ad."

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 679
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadAdFailed()V

    .line 680
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/AdEvent;->NO_AD:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v2, "There was no ad to show."

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    .restart local v6    # "closeBracketPosition":I
    .restart local v11    # "scriptTagPosition":I
    :cond_6
    const-string v0, "mraid.js"

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 668
    goto :goto_1

    .line 685
    .end local v6    # "closeBracketPosition":I
    .end local v11    # "scriptTagPosition":I
    :cond_7
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 686
    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 688
    :cond_8
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->destroyDrawingCache()V

    .line 387
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 389
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 390
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->destroy()V

    .line 392
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adReleased:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to release the WebView"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method replaceCachedFilePath(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "relativeUrl"    # Ljava/lang/String;
    .param p3, "localFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(http|https):\\/\\/[^\"\\s\']*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, "patternString":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 738
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 740
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 741
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, "replacedHtml":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 743
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const/4 v4, 0x1

    .line 747
    .end local v3    # "replacedHtml":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method resetMRAID()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    iget v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->initialLayerType:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setLayerType(I)V

    .line 345
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 346
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 347
    iput-boolean v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 348
    return-void
.end method

.method runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
    .locals 4
    .param p1, "command"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    .prologue
    .line 360
    if-nez p1, :cond_1

    .line 361
    const-string v2, "Unable to run JS command"

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adReleased:Z

    if-nez v2, :cond_2

    .line 367
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->getJSCall()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "jsCommand":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadUrl(Ljava/lang/String;)V

    .line 369
    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v1    # "jsCommand":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Unable to run JS command"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->getCommand()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->GET_PAGE_SIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    if-ne v2, v3, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->getJSCall()Ljava/lang/String;

    move-result-object v1

    .line 372
    .restart local v1    # "jsCommand":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->loadUrl(Ljava/lang/String;)V

    .line 373
    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setAdLoaded()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 337
    return-void
.end method

.method public setContainer(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 193
    return-void
.end method

.method setLayerType(I)V
    .locals 7
    .param p1, "layerType"    # I

    .prologue
    .line 160
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const/4 p1, 0x2

    .line 168
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 171
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 172
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 164
    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Cannot access setLayerType method in WebView. Must be older API than 11."

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMraidLoaded()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 723
    return-void
.end method

.method setSchemeHandler(Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;)V
    .locals 0
    .param p1, "schemeHandler"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->schemeHandler:Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    .line 154
    return-void
.end method

.method setSoftwareLayerType()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->setLayerType(I)V

    .line 182
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setIsViewable(Z)V

    .line 355
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
