.class Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;
.super Ljava/lang/Object;
.source "ASVpaidInterstitalActivity.java"

# interfaces
.implements Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->buildInterstitialPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->finish()V

    .line 70
    return-void
.end method

.method public onFailure()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 75
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->finish()V

    .line 76
    return-void
.end method

.method public onShowClose()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;->this$0:Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;

    new-instance v1, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1$1;-><init>(Lcom/fusepowered/as/view/ASVpaidInterstitalActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASVpaidInterstitalActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
