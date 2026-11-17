.class Lcom/fusepowered/sa/android/publish/slider/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/slider/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/slider/a;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/slider/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/a$1;->b:Lcom/fusepowered/sa/android/publish/slider/a;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/slider/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/a$1;->b:Lcom/fusepowered/sa/android/publish/slider/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/slider/a$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/slider/a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    return-void
.end method
