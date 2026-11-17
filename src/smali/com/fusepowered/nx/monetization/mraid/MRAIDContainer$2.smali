.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->releaseWithCloseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

.field final synthetic val$container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 945
    :try_start_0
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    if-eq v4, v5, :cond_0

    .line 946
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-static {v4, v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$202(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .line 947
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$300(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->HIDDEN:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    invoke-virtual {v4, v5}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V

    .line 949
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$400(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$500(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v4, v5, :cond_1

    .line 950
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v4, 0xff

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 951
    .local v1, "containerDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 952
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2$1;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;Landroid/graphics/drawable/Drawable;)V

    .line 961
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 962
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 963
    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    const/16 v5, 0x3eb

    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->val$container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 964
    .local v3, "msg":Landroid/os/Message;
    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->handler:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v3, v6, v7}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 969
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "containerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$408(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)I

    .line 973
    :goto_1
    return-void

    .line 967
    :cond_1
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$600(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 970
    :catch_0
    move-exception v2

    .line 971
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Unhandled exception"

    invoke-static {v4, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
