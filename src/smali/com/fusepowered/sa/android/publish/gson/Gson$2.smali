.class Lcom/fusepowered/sa/android/publish/gson/Gson$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/gson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/sa/android/publish/gson/Gson;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$2;->this$0:Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$2;->this$0:Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$2;->this$0:Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
