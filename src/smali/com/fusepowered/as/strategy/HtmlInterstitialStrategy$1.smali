.class Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;
.super Ljava/lang/Object;
.source "HtmlInterstitialStrategy.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/ProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->buildInterstitialPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onExpand(Ljava/util/Properties;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onProviderAttempt()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 88
    return-void
.end method

.method public onProviderFailure()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 103
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$100(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->finish()V

    .line 104
    return-void
.end method

.method public onProviderFinished()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 98
    return-void
.end method

.method public onProviderImpression()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 93
    return-void
.end method

.method public onVideoViewCreated(Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/HtmlInterstitialStrategy;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onVideoViewCreated(Landroid/widget/VideoView;)V

    .line 83
    return-void
.end method
