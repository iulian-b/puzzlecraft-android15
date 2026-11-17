.class final enum Lcom/fusepowered/sa/android/publish/gson/LongSerializationPolicy$1;
.super Lcom/fusepowered/sa/android/publish/gson/LongSerializationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
