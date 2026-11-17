.class Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;
.super Ljava/lang/Object;
.source "MoPubRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;-><init>(Lcom/fusepowered/m2/network/MoPubRequestQueue;Lcom/fusepowered/m2/volley/Request;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;

.field final synthetic val$request:Lcom/fusepowered/m2/volley/Request;

.field final synthetic val$this$0:Lcom/fusepowered/m2/network/MoPubRequestQueue;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;Lcom/fusepowered/m2/network/MoPubRequestQueue;Lcom/fusepowered/m2/volley/Request;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;->this$1:Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;

    iput-object p2, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;->val$this$0:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    iput-object p3, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;->val$request:Lcom/fusepowered/m2/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;->this$1:Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;

    iget-object v0, v0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;->this$0:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    invoke-static {v0}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->access$000(Lcom/fusepowered/m2/network/MoPubRequestQueue;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;->val$request:Lcom/fusepowered/m2/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;->this$1:Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;

    iget-object v0, v0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper;->this$0:Lcom/fusepowered/m2/network/MoPubRequestQueue;

    iget-object v1, p0, Lcom/fusepowered/m2/network/MoPubRequestQueue$DelayedRequestHelper$1;->val$request:Lcom/fusepowered/m2/volley/Request;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/network/MoPubRequestQueue;->add(Lcom/fusepowered/m2/volley/Request;)Lcom/fusepowered/m2/volley/Request;

    .line 147
    return-void
.end method
