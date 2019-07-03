<template>
  <div>
    <label for="locale">locale</label>
    <select v-model="locale">
      <option>en</option>
      <option>es</option>
    </select>
    <p>message: {{ $t('message') }}</p>
  </div>
</template>

<script>
export default {
  name: 'HelloI18n',
  data () { return { locale: 'en' } },
  watch: {
    locale (val) {
      this.$i18n.locale = val
    }
  }
}
</script>
