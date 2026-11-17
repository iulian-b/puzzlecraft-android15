.class Lcom/fusepowered/nx/network/volley/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/network/volley/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/network/volley/Request;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/network/volley/Request;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/fusepowered/nx/network/volley/Request;

    .prologue
    .line 213
    .local p0, "this":Lcom/fusepowered/nx/network/volley/Request$1;, "Lcom/fusepowered/nx/network/volley/Request$1;"
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/Request$1;->this$0:Lcom/fusepowered/nx/network/volley/Request;

    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/Request$1;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/fusepowered/nx/network/volley/Request$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 216
    .local p0, "this":Lcom/fusepowered/nx/network/volley/Request$1;, "Lcom/fusepowered/nx/network/volley/Request$1;"
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/Request$1;->this$0:Lcom/fusepowered/nx/network/volley/Request;

    invoke-static {v0}, Lcom/fusepowered/nx/network/volley/Request;->access$000(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/network/volley/Request$1;->val$tag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/fusepowered/nx/network/volley/Request$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/nx/network/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 217
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/Request$1;->this$0:Lcom/fusepowered/nx/network/volley/Request;

    invoke-static {v0}, Lcom/fusepowered/nx/network/volley/Request;->access$000(Lcom/fusepowered/nx/network/volley/Request;)Lcom/fusepowered/nx/network/volley/VolleyLog$MarkerLog;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/network/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 218
    return-void
.end method
