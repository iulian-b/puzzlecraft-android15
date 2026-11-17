.class final Lcom/fusepowered/mraid1/MRAIDView$Size;
.super Ljava/lang/Object;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/mraid1/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/fusepowered/mraid1/MRAIDView;

.field public width:I


# direct methods
.method private constructor <init>(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$Size;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/mraid1/MRAIDView;Lcom/fusepowered/mraid1/MRAIDView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/mraid1/MRAIDView;
    .param p2, "x1"    # Lcom/fusepowered/mraid1/MRAIDView$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/fusepowered/mraid1/MRAIDView$Size;-><init>(Lcom/fusepowered/mraid1/MRAIDView;)V

    return-void
.end method
