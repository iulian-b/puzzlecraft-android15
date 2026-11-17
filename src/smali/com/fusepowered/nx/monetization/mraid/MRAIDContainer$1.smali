.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$100(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->close()V

    .line 167
    :cond_1
    return-void
.end method
