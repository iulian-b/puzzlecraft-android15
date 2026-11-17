.class Lcom/fusepowered/m2/mraid/MraidController$2;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 166
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidController$2;->this$0:Lcom/fusepowered/m2/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method
