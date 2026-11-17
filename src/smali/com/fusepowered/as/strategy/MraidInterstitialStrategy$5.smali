.class Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;
.super Ljava/lang/Object;
.source "MraidInterstitialStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->setOrientationProperties(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

.field final synthetic val$allowOrientationChange:Z

.field final synthetic val$forceOrientation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    iput-boolean p2, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->val$allowOrientationChange:Z

    iput-object p3, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->val$forceOrientation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->val$allowOrientationChange:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->access$300(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setRequestedOrientation(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->val$forceOrientation:Ljava/lang/String;

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->access$300(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setRequestedOrientation(I)V

    .line 171
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->val$allowOrientationChange:Z

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->access$300(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setRequestedOrientation(I)V

    .line 174
    :cond_2
    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->val$forceOrientation:Ljava/lang/String;

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy$5;->this$0:Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;->access$300(Lcom/fusepowered/as/strategy/MraidInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
