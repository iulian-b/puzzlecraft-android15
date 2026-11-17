.class Lcom/fusepowered/al/impl/sdk/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/bn;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/bo;->a:Lcom/fusepowered/al/impl/sdk/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bo;->a:Lcom/fusepowered/al/impl/sdk/bn;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/bn;->a:Lcom/fusepowered/al/impl/sdk/bl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/bl;->b(Lcom/fusepowered/al/impl/sdk/bl;)Lcom/fusepowered/al/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "TaskManager"

    const-string v2, "Caught unhandled exception"

    invoke-interface {v0, v1, v2, p2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
