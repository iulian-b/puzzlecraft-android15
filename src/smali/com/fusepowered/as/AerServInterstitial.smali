.class public Lcom/fusepowered/as/AerServInterstitial;
.super Ljava/lang/Object;
.source "AerServInterstitial.java"

# interfaces
.implements Lcom/fusepowered/as/AerServAd;


# static fields
.field private static final AD_TYPE:Lcom/fusepowered/as/AerServAdType;


# instance fields
.field private config:Lcom/fusepowered/as/AerServConfig;

.field private executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

.field private saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

.field private showListener:Lcom/fusepowered/as/controller/listener/ShowListener;

.field private videoPosition:I

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fusepowered/as/AerServAdType;->INTERSTITIAL:Lcom/fusepowered/as/AerServAdType;

    sput-object v0, Lcom/fusepowered/as/AerServInterstitial;->AD_TYPE:Lcom/fusepowered/as/AerServAdType;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/as/AerServConfig;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoPosition:I

    .line 21
    new-instance v0, Lcom/fusepowered/as/AerServInterstitial$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/AerServInterstitial$1;-><init>(Lcom/fusepowered/as/AerServInterstitial;)V

    iput-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

    .line 28
    new-instance v0, Lcom/fusepowered/as/AerServInterstitial$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/AerServInterstitial$2;-><init>(Lcom/fusepowered/as/AerServInterstitial;)V

    iput-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AerServInterstitial constructed with config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/fusepowered/as/AerServInterstitial;->config:Lcom/fusepowered/as/AerServConfig;

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/as/AerServInterstitial$3;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/as/AerServInterstitial$3;-><init>(Lcom/fusepowered/as/AerServInterstitial;Lcom/fusepowered/as/AerServConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/AerServInterstitial;)Lcom/fusepowered/as/controller/listener/ShowListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->showListener:Lcom/fusepowered/as/controller/listener/ShowListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/as/AerServInterstitial;Lcom/fusepowered/as/controller/listener/ShowListener;)Lcom/fusepowered/as/controller/listener/ShowListener;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/fusepowered/as/AerServInterstitial;->showListener:Lcom/fusepowered/as/controller/listener/ShowListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fusepowered/as/AerServInterstitial;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/fusepowered/as/AerServInterstitial;->videoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$200()Lcom/fusepowered/as/AerServAdType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fusepowered/as/AerServInterstitial;->AD_TYPE:Lcom/fusepowered/as/AerServAdType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/as/AerServInterstitial;)Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/as/AerServInterstitial;)Lcom/fusepowered/as/controller/listener/SaveShowListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

    return-object v0
.end method


# virtual methods
.method public getAerServAdType()Lcom/fusepowered/as/AerServAdType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/fusepowered/as/AerServInterstitial;->AD_TYPE:Lcom/fusepowered/as/AerServAdType;

    return-object v0
.end method

.method public kill()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoPosition:I

    .line 62
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 64
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/fusepowered/as/AerServInterstitial;->videoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 73
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 75
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial;->config:Lcom/fusepowered/as/AerServConfig;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call config before calling show"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/as/AerServInterstitial$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/AerServInterstitial$4;-><init>(Lcom/fusepowered/as/AerServInterstitial;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method
