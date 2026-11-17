.class Lcom/fusepowered/l1/tasks/AdFetcher$1;
.super Ljava/lang/Object;
.source "AdFetcher.java"

# interfaces
.implements Lcom/fusepowered/l1/ResponseParser$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/tasks/AdFetcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/tasks/AdFetcher;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/tasks/AdFetcher;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fusepowered/l1/tasks/AdFetcher$1;->this$0:Lcom/fusepowered/l1/tasks/AdFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdFetcher$1;->this$0:Lcom/fusepowered/l1/tasks/AdFetcher;

    const/4 v1, 0x0

    new-instance v2, Lcom/fusepowered/l1/LoopMeError;

    invoke-direct {v2, p1}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/tasks/AdFetcher;->access$000(Lcom/fusepowered/l1/tasks/AdFetcher;Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V

    .line 59
    return-void
.end method
