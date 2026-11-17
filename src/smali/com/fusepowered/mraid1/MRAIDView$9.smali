.class Lcom/fusepowered/mraid1/MRAIDView$9;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/mraid1/MRAIDView;->addCloseRegion(Landroid/view/View;)V
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
    .line 929
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$9;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$9;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2400(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 933
    return-void
.end method
