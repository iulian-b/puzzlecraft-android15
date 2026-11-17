.class Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;
.super Ljava/lang/Object;
.source "ClickDestinationResolutionListener.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpinningProgressView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m2/nativeads/SpinningProgressView;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Iterator;Lcom/fusepowered/m2/nativeads/SpinningProgressView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Iterator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "spinningProgressView"    # Lcom/fusepowered/m2/nativeads/SpinningProgressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/m2/nativeads/SpinningProgressView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "urlIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->mUrlIterator:Ljava/util/Iterator;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->mSpinningProgressView:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->mUrlIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method private removeSpinningProgressView()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->mSpinningProgressView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/nativeads/SpinningProgressView;

    .line 71
    .local v0, "spinningProgressView":Lcom/fusepowered/m2/nativeads/SpinningProgressView;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/SpinningProgressView;->removeFromRoot()Z

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "Failed to resolve URL for click."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    .line 67
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "resolvedUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    new-instance v0, Lcom/fusepowered/m2/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/fusepowered/m2/common/UrlHandler$Builder;-><init>()V

    sget-object v1, Lcom/fusepowered/m2/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/fusepowered/m2/common/UrlAction;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/fusepowered/m2/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->OPEN_APP_MARKET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/fusepowered/m2/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/fusepowered/m2/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/fusepowered/m2/common/UrlAction;[Lcom/fusepowered/m2/common/UrlAction;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener$1;-><init>(Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->withResultActions(Lcom/fusepowered/m2/common/UrlHandler$ResultActions;)Lcom/fusepowered/m2/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/UrlHandler$Builder;->build()Lcom/fusepowered/m2/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/fusepowered/m2/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    .line 61
    return-void
.end method
