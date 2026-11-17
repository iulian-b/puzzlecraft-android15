.class Lcom/fusepowered/sa/android/publish/slider/sliding/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/slider/sliding/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/slider/sliding/c;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/slider/sliding/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/c$2;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/sliding/c$2;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/slider/sliding/c;->c(I)V

    return-void
.end method
