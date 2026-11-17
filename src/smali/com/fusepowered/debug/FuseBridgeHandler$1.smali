.class Lcom/fusepowered/debug/FuseBridgeHandler$1;
.super Ljava/lang/Object;
.source "FuseBridgeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/debug/FuseBridgeHandler;->execute(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$key:I

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/fusepowered/debug/FuseBridgeHandler;Ljava/lang/reflect/Method;[Ljava/lang/Object;ILjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    iput-object p2, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$args:[Ljava/lang/Object;

    iput p4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$key:I

    iput-object p5, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 486
    .local v1, "retStr":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$method:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 487
    .local v2, "retVal":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    const/16 v5, 0xc8

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v4, v2}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$100(Lcom/fusepowered/debug/FuseBridgeHandler;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 498
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 499
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$300(Lcom/fusepowered/debug/FuseBridgeHandler;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$key:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 501
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 503
    .end local v2    # "retVal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    const/16 v5, 0x253

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 498
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 499
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$300(Lcom/fusepowered/debug/FuseBridgeHandler;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$key:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 501
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 491
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    const/16 v5, 0x252

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 498
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 499
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$300(Lcom/fusepowered/debug/FuseBridgeHandler;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$key:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 501
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 494
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    const/16 v5, 0x251

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 498
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 499
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$300(Lcom/fusepowered/debug/FuseBridgeHandler;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$key:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v3}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 501
    iget-object v3, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v4}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 499
    iget-object v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v4}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$300(Lcom/fusepowered/debug/FuseBridgeHandler;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$key:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->this$0:Lcom/fusepowered/debug/FuseBridgeHandler;

    invoke-static {v4}, Lcom/fusepowered/debug/FuseBridgeHandler;->access$200(Lcom/fusepowered/debug/FuseBridgeHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 501
    iget-object v4, p0, Lcom/fusepowered/debug/FuseBridgeHandler$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3
.end method
