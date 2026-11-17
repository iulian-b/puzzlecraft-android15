.class Lcom/fusepowered/m2/mraid/MraidController$5;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mraid/MraidController;->handlePageLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mraid/MraidController;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 463
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidController;->access$200(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v1}, Lcom/fusepowered/m2/mraid/MraidController;->access$700(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v2}, Lcom/fusepowered/m2/mraid/MraidController;->access$600(Lcom/fusepowered/m2/mraid/MraidController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler;->isSmsAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v2}, Lcom/fusepowered/m2/mraid/MraidController;->access$700(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v3}, Lcom/fusepowered/m2/mraid/MraidController;->access$600(Lcom/fusepowered/m2/mraid/MraidController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler;->isTelAvailable(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v3}, Lcom/fusepowered/m2/mraid/MraidController;->access$600(Lcom/fusepowered/m2/mraid/MraidController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v4}, Lcom/fusepowered/m2/mraid/MraidController;->access$600(Lcom/fusepowered/m2/mraid/MraidController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/m2/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v5}, Lcom/fusepowered/m2/mraid/MraidController;->access$800(Lcom/fusepowered/m2/mraid/MraidController;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/m2/mraid/MraidBridge;->notifySupports(ZZZZZ)V

    .line 469
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidController;->access$200(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v1}, Lcom/fusepowered/m2/mraid/MraidController;->access$900(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/PlacementType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mraid/MraidBridge;->notifyPlacementType(Lcom/fusepowered/m2/mraid/PlacementType;)V

    .line 470
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidController;->access$200(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v1}, Lcom/fusepowered/m2/mraid/MraidController;->access$200(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/MraidBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/mraid/MraidBridge;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mraid/MraidBridge;->notifyViewability(Z)V

    .line 471
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidController$5;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidController;->access$200(Lcom/fusepowered/m2/mraid/MraidController;)Lcom/fusepowered/m2/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mraid/MraidBridge;->notifyReady()V

    .line 472
    return-void
.end method
