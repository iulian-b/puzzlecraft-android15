.class Lcom/fusepowered/as/view/ASInterstitialActivity$1;
.super Ljava/lang/Object;
.source "ASInterstitialActivity.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/ProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/ASInterstitialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/ASInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/ASInterstitialActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fusepowered/as/view/ASInterstitialActivity$1;->this$0:Lcom/fusepowered/as/view/ASInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/fusepowered/as/view/ASInterstitialActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onExpand called but ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onProviderAttempt()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/fusepowered/as/view/ASInterstitialActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderAttempt called on provider listener but ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onProviderFailure()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/fusepowered/as/view/ASInterstitialActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderFailure called on provider listener but ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onProviderFinished()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/fusepowered/as/view/ASInterstitialActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderFinished called on provider listener but ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onProviderImpression()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/fusepowered/as/view/ASInterstitialActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderImpression called on provider listener but ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onVideoViewCreated(Landroid/widget/VideoView;)V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/fusepowered/as/view/ASInterstitialActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoViewCreated called on provider listener but ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method
