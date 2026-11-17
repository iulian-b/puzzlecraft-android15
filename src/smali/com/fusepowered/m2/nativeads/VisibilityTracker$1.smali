.class Lcom/fusepowered/m2/nativeads/VisibilityTracker$1;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/fusepowered/m2/nativeads/VisibilityTracker$VisibilityChecker;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/VisibilityTracker;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/VisibilityTracker;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/VisibilityTracker$1;->this$0:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/VisibilityTracker$1;->this$0:Lcom/fusepowered/m2/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/VisibilityTracker;->scheduleVisibilityCheck()V

    .line 103
    const/4 v0, 0x1

    return v0
.end method
