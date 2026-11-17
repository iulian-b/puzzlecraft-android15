.class Lcom/fusepowered/m2/mraid/MraidController$1;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Lcom/fusepowered/m2/common/CloseableLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Lcom/fusepowered/m2/mraid/PlacementType;Lcom/fusepowered/m2/mraid/MraidBridge;Lcom/fusepowered/m2/mraid/MraidBridge;Lcom/fusepowered/m2/mraid/MraidController$ScreenMetricsWaiter;)V
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
    .line 158
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidController$1;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidController$1;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mraid/MraidController;->handleClose()V

    .line 162
    return-void
.end method
