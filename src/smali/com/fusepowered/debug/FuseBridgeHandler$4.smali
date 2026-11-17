.class final Lcom/fusepowered/debug/FuseBridgeHandler$4;
.super Landroid/util/SparseArray;
.source "FuseBridgeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/debug/FuseBridgeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 668
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 669
    const/16 v0, 0xc8

    const-string v1, "200 OK:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 670
    const/16 v0, 0x1f8

    const-string v1, "504 Gateway Timeout:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 674
    const/16 v0, 0x24f

    const-string v1, "591 No response:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 675
    const/16 v0, 0x250

    const-string v1, "592 Method not found:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 676
    const/16 v0, 0x251

    const-string v1, "593 Reflection error:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 677
    const/16 v0, 0x252

    const-string v1, "594 Bad arguments:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 678
    const/16 v0, 0x253

    const-string v1, "595 Function error:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 679
    const/16 v0, 0x254

    const-string v1, "596 Parameter init error:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 680
    const/16 v0, 0x255

    const-string v1, "597 Parameter construct error:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 681
    const/16 v0, 0x256

    const-string v1, "598 Parameter cast error:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 682
    const/16 v0, 0x257

    const-string v1, "599 JSON Parse Error:"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/debug/FuseBridgeHandler$4;->put(ILjava/lang/Object;)V

    .line 683
    return-void
.end method
