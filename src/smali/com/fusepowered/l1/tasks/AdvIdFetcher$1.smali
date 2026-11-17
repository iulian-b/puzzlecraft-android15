.class Lcom/fusepowered/l1/tasks/AdvIdFetcher$1;
.super Ljava/lang/Object;
.source "AdvIdFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/tasks/AdvIdFetcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/tasks/AdvIdFetcher;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/tasks/AdvIdFetcher;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher$1;->this$0:Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher$1;->this$0:Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    invoke-static {v0}, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->access$100(Lcom/fusepowered/l1/tasks/AdvIdFetcher;)Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/l1/tasks/AdvIdFetcher$1;->this$0:Lcom/fusepowered/l1/tasks/AdvIdFetcher;

    invoke-static {v1}, Lcom/fusepowered/l1/tasks/AdvIdFetcher;->access$000(Lcom/fusepowered/l1/tasks/AdvIdFetcher;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;->onComplete(Ljava/lang/String;)V

    .line 49
    return-void
.end method
