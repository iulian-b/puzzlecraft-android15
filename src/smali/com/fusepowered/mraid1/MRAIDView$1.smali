.class Lcom/fusepowered/mraid1/MRAIDView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/mraid1/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/fusepowered/mraid1/MRAIDViewListener;Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/mraid1/MRAIDView;


# direct methods
.method constructor <init>(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$1;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method
