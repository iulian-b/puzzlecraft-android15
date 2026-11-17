.class Lcom/fusepowered/m2/common/event/ScribeEventRecorder$1;
.super Ljava/lang/Object;
.source "ScribeEventRecorder.java"

# interfaces
.implements Lcom/fusepowered/m2/network/ScribeRequest$ScribeRequestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/common/event/ScribeEventRecorder;->sendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/common/event/ScribeEventRecorder;

.field final synthetic val$events:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/common/event/ScribeEventRecorder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fusepowered/m2/common/event/ScribeEventRecorder$1;->this$0:Lcom/fusepowered/m2/common/event/ScribeEventRecorder;

    iput-object p2, p0, Lcom/fusepowered/m2/common/event/ScribeEventRecorder$1;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest(Lcom/fusepowered/m2/network/ScribeRequest$Listener;)Lcom/fusepowered/m2/network/ScribeRequest;
    .locals 4
    .param p1, "listener"    # Lcom/fusepowered/m2/network/ScribeRequest$Listener;

    .prologue
    .line 103
    new-instance v0, Lcom/fusepowered/m2/network/ScribeRequest;

    const-string v1, "https://analytics.mopub.com/i/jot/exchange_client_event"

    iget-object v2, p0, Lcom/fusepowered/m2/common/event/ScribeEventRecorder$1;->val$events:Ljava/util/List;

    iget-object v3, p0, Lcom/fusepowered/m2/common/event/ScribeEventRecorder$1;->this$0:Lcom/fusepowered/m2/common/event/ScribeEventRecorder;

    invoke-static {v3}, Lcom/fusepowered/m2/common/event/ScribeEventRecorder;->access$000(Lcom/fusepowered/m2/common/event/ScribeEventRecorder;)Lcom/fusepowered/m2/common/event/EventSerializer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fusepowered/m2/network/ScribeRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/fusepowered/m2/common/event/EventSerializer;Lcom/fusepowered/m2/network/ScribeRequest$Listener;)V

    return-object v0
.end method
