.class Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener$1;
.super Ljava/lang/Object;
.source "ClickDestinationResolutionListener.java"

# interfaces
.implements Lcom/fusepowered/m2/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener$1;->this$0:Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lastFailedUrlAction"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener$1;->this$0:Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->access$000(Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener$1;->this$0:Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;->access$000(Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener$1;->this$0:Lcom/fusepowered/m2/nativeads/ClickDestinationResolutionListener;

    invoke-static {v0, v1}, Lcom/fusepowered/m2/nativeads/UrlResolutionTask;->getResolvedUrl(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/UrlResolutionTask$UrlResolutionListener;)V

    .line 57
    :cond_0
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlAction"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    return-void
.end method
