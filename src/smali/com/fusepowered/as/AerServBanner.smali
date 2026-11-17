.class public Lcom/fusepowered/as/AerServBanner;
.super Landroid/widget/RelativeLayout;
.source "AerServBanner.java"

# interfaces
.implements Lcom/fusepowered/as/AerServAd;
.implements Lcom/fusepowered/as/view/View;


# static fields
.field private static final AD_TYPE:Lcom/fusepowered/as/AerServAdType;


# instance fields
.field private asWebViewIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/fusepowered/as/AerServConfig;

.field private executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

.field private saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

.field private showListener:Lcom/fusepowered/as/controller/listener/ShowListener;

.field private videoPosition:I

.field private videoView:Landroid/widget/VideoView;

.field public final viewId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fusepowered/as/AerServAdType;->BANNER:Lcom/fusepowered/as/AerServAdType;

    sput-object v0, Lcom/fusepowered/as/AerServBanner;->AD_TYPE:Lcom/fusepowered/as/AerServAdType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->viewId:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/as/AerServBanner;->videoPosition:I

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->asWebViewIds:Ljava/util/Set;

    .line 34
    new-instance v0, Lcom/fusepowered/as/AerServBanner$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/AerServBanner$1;-><init>(Lcom/fusepowered/as/AerServBanner;)V

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

    .line 41
    new-instance v0, Lcom/fusepowered/as/AerServBanner$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/AerServBanner$2;-><init>(Lcom/fusepowered/as/AerServBanner;)V

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->viewId:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/as/AerServBanner;->videoPosition:I

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->asWebViewIds:Ljava/util/Set;

    .line 34
    new-instance v0, Lcom/fusepowered/as/AerServBanner$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/AerServBanner$1;-><init>(Lcom/fusepowered/as/AerServBanner;)V

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

    .line 41
    new-instance v0, Lcom/fusepowered/as/AerServBanner$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/AerServBanner$2;-><init>(Lcom/fusepowered/as/AerServBanner;)V

    iput-object v0, p0, Lcom/fusepowered/as/AerServBanner;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/AerServBanner;)Lcom/fusepowered/as/controller/listener/ShowListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->showListener:Lcom/fusepowered/as/controller/listener/ShowListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/as/AerServBanner;Lcom/fusepowered/as/controller/listener/ShowListener;)Lcom/fusepowered/as/controller/listener/ShowListener;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fusepowered/as/AerServBanner;->showListener:Lcom/fusepowered/as/controller/listener/ShowListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fusepowered/as/AerServBanner;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fusepowered/as/AerServBanner;->videoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$200()Lcom/fusepowered/as/AerServAdType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fusepowered/as/AerServBanner;->AD_TYPE:Lcom/fusepowered/as/AerServAdType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/as/AerServBanner;)Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/as/AerServBanner;)Lcom/fusepowered/as/controller/listener/SaveShowListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

    return-object v0
.end method

.method private registerView()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/fusepowered/as/view/ViewLocator;->getInstance()Lcom/fusepowered/as/view/ViewLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/AerServBanner;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/fusepowered/as/view/ViewLocator;->registerView(Ljava/lang/String;Lcom/fusepowered/as/view/View;)V

    .line 92
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51
    instance-of v0, p1, Lcom/fusepowered/as/view/component/ASWebView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->asWebViewIds:Ljava/util/Set;

    check-cast p1, Lcom/fusepowered/as/view/component/ASWebView;

    iget-object v1, p1, Lcom/fusepowered/as/view/component/ASWebView;->VIEW_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public configure(Lcom/fusepowered/as/AerServConfig;)Lcom/fusepowered/as/AerServBanner;
    .locals 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fusepowered/as/AerServBanner;->config:Lcom/fusepowered/as/AerServConfig;

    .line 76
    invoke-virtual {p0}, Lcom/fusepowered/as/AerServBanner;->removeAllViews()V

    .line 77
    invoke-direct {p0}, Lcom/fusepowered/as/AerServBanner;->registerView()V

    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/as/AerServBanner$3;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/as/AerServBanner$3;-><init>(Lcom/fusepowered/as/AerServBanner;Lcom/fusepowered/as/AerServConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-object p0
.end method

.method public getAerServAdType()Lcom/fusepowered/as/AerServAdType;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/fusepowered/as/AerServBanner;->AD_TYPE:Lcom/fusepowered/as/AerServAdType;

    return-object v0
.end method

.method public kill()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->asWebViewIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/fusepowered/as/view/ViewLocator;->getInstance()Lcom/fusepowered/as/view/ViewLocator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fusepowered/as/view/ViewLocator;->unregisterView(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->asWebViewIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 154
    invoke-virtual {p0}, Lcom/fusepowered/as/AerServBanner;->removeAllViews()V

    .line 155
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/as/AerServBanner;->videoPosition:I

    .line 101
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 103
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/fusepowered/as/AerServBanner;->videoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 112
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 114
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/as/AerServBanner;->config:Lcom/fusepowered/as/AerServConfig;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call config before calling show"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/as/AerServBanner$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/AerServBanner$4;-><init>(Lcom/fusepowered/as/AerServBanner;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method
